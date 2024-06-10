import { Sequelize } from "sequelize";

const database = new Sequelize("aqiqah_db", "root", "", {
  host: "localhost",
  dialect: "mysql",
});

export default database;
