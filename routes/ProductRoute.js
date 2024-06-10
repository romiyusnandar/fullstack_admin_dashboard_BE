import express from 'express';
import axios from 'axios';
import { parse as json2csv } from 'json2csv';
import { getProducts, getProductById, createProduct, updateProduct, deleteProduct, getTotalPrice } from '../controllers/Products.js';
import { verifyUser, adminOnly } from './../middleware/AuthUser.js';

const router = express.Router();

router.get('/products', verifyUser, getProducts);
router.get('/product/:id', verifyUser, getProductById);
router.post('/products', verifyUser, adminOnly, createProduct);
router.patch('/product/:id', verifyUser, adminOnly, updateProduct);
router.delete('/product/:id', verifyUser, adminOnly, deleteProduct);
router.get("/products/total-price", verifyUser, adminOnly, getTotalPrice);

router.get('/export/products', verifyUser, async (req, res) => {
  try {
    const response = await axios.get('http://localhost:4000/products');
    const products = response.data;

    const csv = json2csv(products, { fields: ['id', 'uuid', 'name', 'price', 'createdAt'] });

    res.setHeader('Content-Type', 'text/csv');
    res.setHeader('Content-Disposition', 'attachment; filename=products.csv');
    res.status(200).send(csv);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

export default router;
