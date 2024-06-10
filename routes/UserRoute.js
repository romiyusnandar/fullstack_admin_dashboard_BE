import express from "express";
import axios from 'axios';
import { parse as json2csv } from 'json2csv';
import {
  getUsers,
  getUserById,
  createUser,
  updateUser,
  deleteUser,
} from "../controllers/Users.js";
import { verifyUser, adminOnly } from "../middleware/AuthUser.js";

const router = express.Router();

router.get("/users", verifyUser, adminOnly, getUsers);
router.get("/user/:id", verifyUser, adminOnly, getUserById);
router.post("/users", verifyUser, adminOnly, createUser);
router.patch("/user/:id", verifyUser, adminOnly, updateUser);
router.delete("/user/:id", verifyUser, adminOnly, deleteUser);

// common
// router.get("/users",  getUsers);
// router.get("/user/:id",  getUserById);
// router.post("/users",  createUser);
// router.patch("/user/:id",  updateUser);
// router.delete("/user/:id",  deleteUser);


router.get('/export/users', verifyUser, adminOnly, async (req, res) => {
  try {
    const response = await axios.get('http://localhost:4000/users');
    const users = response.data;

    const csv = json2csv(users, { fields: ['uuid', 'email','name', 'role'] });

    res.setHeader('Content-Type', 'text/csv');
    res.setHeader('Content-Disposition', 'attachment; filename=users.csv');
    res.status(200).send(csv);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});


export default router;
