import express from "express";
import cors from "cors";
import session from "express-session";
import dotenv from "dotenv";
import mysqldump from "mysqldump";
import path from "path";
import { exec } from "child_process";
import multer from "multer";
import { fileURLToPath } from 'url';

import database from "./config/Database.js";
import UserRoute from "./routes/UserRoute.js";
import ProductRoute from "./routes/ProductRoute.js";
import CustomerRoute from "./routes/CustomerRoute.js";
import AuthRoute from "./routes/AuthRoute.js";
import Sequelizestore from "connect-session-sequelize";

dotenv.config();

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

const app = express();
const sessionStore = Sequelizestore(session.Store);
const store = new sessionStore({
  db: database,
});

app.use(
  session({
    secret: process.env.SESS_SECRET,
    resave: false,
    saveUninitialized: true,
    store: store,
    cookie: {
      secure: "auto",
    },
  })
);

app.use(
  cors({
    credentials: true,
    origin: "http://localhost:3000",
  })
);
app.use(express.json());
app.use(UserRoute);
app.use(ProductRoute);
app.use(CustomerRoute);
app.use(AuthRoute);

// Configure Multer for file uploads
const upload = multer({ dest: 'uploads/' });

// Backup route
app.get("/backup", async (req, res) => {
  try {
    await mysqldump({
      connection: {
        host: process.env.DB_HOST,
        port: process.env.DB_PORT,
        user: process.env.DB_USER,
        password: process.env.DB_PASSWORD,
        database: process.env.DB_NAME,
      },
      dumpToFile: './backup.sql',
    });
    res.status(200).send('Backup completed successfully.');
  } catch (error) {
    console.error('Error during backup:', error);
    res.status(500).send('Backup failed.');
  }
});

// Download backup route
app.get("/download-backup", (req, res) => {
  try {
    const file = path.join(__dirname, "backup.sql");
    res.download(file);
  } catch (error) {
    console.error("Error downloading backup file:", error);
    res.status(500).send("Download failed.");
  }
});

// Import route
app.post("/import-database", upload.single('sqlfile'), (req, res) => {
  const file = req.file;
  if (!file) {
    return res.status(400).send('No file uploaded.');
  }

  const filePath = path.join(__dirname, file.path);
  const command = `mysql -h ${process.env.DB_HOST} -P ${process.env.DB_PORT} -u ${process.env.DB_USER} -p${process.env.DB_PASSWORD} ${process.env.DB_NAME} < ${filePath}`;

  exec(command, (error, stdout, stderr) => {
    if (error) {
      console.error('Error importing database:', error);
      return res.status(500).send('Database import failed.');
    }
    console.log('Database import successful:', stdout);
    res.status(200).send('Database imported successfully.');
  });
});

// Create session table in the database
// store.sync();

const port = 4000;
app.listen(port, () => {
  console.log(`Server is running 🚀 on port: ${port}`);
});
