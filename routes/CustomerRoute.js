import express from "express";
import axios from 'axios';
import { parse as json2csv } from 'json2csv';
import {
  getCustomers,
  getCustomerById,
  createCustomer,
  updateCustomer,
  deleteCustomer,
  getTotalProductPrice
} from "../controllers/Customers.js";
import { verifyUser } from './../middleware/AuthUser.js';

const router = express.Router();

router.get("/customers", verifyUser, getCustomers);
router.get("/customer/:id", verifyUser, getCustomerById);
router.post("/customers", verifyUser, createCustomer);
router.patch("/customer/:id", verifyUser, updateCustomer);
router.delete("/customer/:id", verifyUser, deleteCustomer);
router.get("/customers/totalPrice", verifyUser, getTotalProductPrice);


router.get('/export/customers', verifyUser, async (req, res) => {
  try {
    const response = await axios.get('http://localhost:4000/customers');
    const customers = response.data;

    const csv = json2csv(customers, { fields: ['uuid', 'name', 'no_whatsapp', 'product.name', 'product.price'] });

    res.setHeader('Content-Type', 'text/csv');
    res.setHeader('Content-Disposition', 'attachment; filename=customers.csv');
    res.status(200).send(csv);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

export default router;
