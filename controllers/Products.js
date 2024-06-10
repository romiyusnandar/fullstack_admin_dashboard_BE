import Products from "../models/ProductModel.js";

export const getProducts = async (req, res) => {
  try {
    const response = await Products.findAll({
      attributes: ["id","uuid", "name", "price", "createdAt"],
    });
    res.status(200).json(response);
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

export const getProductById = async (req, res) => {
  try {
    const product = await Products.findOne({
      attributes: ["id", "uuid", "name", "price", "createdAt"],
      where: {
        uuid: req.params.id
      },
    });
    if (!product) return res.status(404).json({ msg: "Product Tidak Ditemukan!" });
    res.status(200).json(product);
  } catch (error) {
    console.error(error);
    res.status(500).json({ msg: "Server Gagal Mendapatkan Product, Coba Lagi!" });
  }
};

export const createProduct = async (req, res) => {
  try {
    const { name, price } = req.body;
    const newProduct = await Products.create({
      name: name,
      price: price,
      userId: req.userId
    });
    res.status(201).json({ msg: "Produk Berhasil Ditambahkan!" });
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

export const updateProduct = async (req, res) => {
  try {
    const product = await Products.findOne({
      where: { uuid: req.params.id }
    });
    if (!product) return res.status(404).json({ msg: "Product Tidak Ditemukan!" });

    const { name, price } = req.body;
    product.name = name || product.name;
    product.price = price || product.price;
    await product.save();

    res.status(201).json({ msg: "Data Berhasil Diperbarui!" });
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

export const deleteProduct = async (req, res) => {
  try {
    const product = await Products.findOne({
      where: { uuid: req.params.id }
    });
    if (!product) return res.status(404).json({ msg: "Product Tidak Ditemukan!" });

    await product.destroy();
    res.status(200).json({ msg: "Produk Berhasil Dihapus!" });
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

export const getTotalPrice = async (req, res) => {
  try {
    const products = await Products.findAll({
      attributes: ["price"]
    });
    const totalPrice = products.reduce((total, product) => total + product.price, 0);
    res.status(200).json({ totalPrice });
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};
