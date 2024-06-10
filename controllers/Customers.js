import Customers from "../models/CustomerModel.js";
import Products from "../models/ProductModel.js";
import Users from "../models/UserModel.js";

export const getCustomers = async (req, res) => {
  try {
    let response;
    if (req.role === "admin") {
      response = await Customers.findAll({
        attributes: ["uuid", "name", "no_whatsapp"],
        include: [{
          model: Users,
          attributes: ['name', 'email']
        },
        {
          model: Products,
          attributes: ['id', 'name', 'price']
        }],
      });
    } else {
      response = await Customers.findAll({
        attributes: ["uuid", "name", "no_whatsapp"],
        where: {
          userId: req.userId
        },
        include: [{
          model: Users,
          attributes: ['name', 'email']
        },
        {
          model: Products,
          attributes: ['id', 'name', 'price']
        }],
      });
    }
    res.status(200).json(response);
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

// export const getCustomerById = async (req, res) => {
//   try {
//     const customer = await Customers.findOne({
//       attributes: ["uuid", "name", "no_whatsapp"],
//       where: {
//         uuid: req.params.id
//       },
//       include: [
//         {
//           model: Users,
//           attributes: ['name', 'email']
//         },
//         {
//           model: Products,
//           attributes: ['name', 'price']
//         }
//       ]
//     });
//     if (!customer) return res.status(404).json({ msg: "Data Tidak Ditemukan!" });

//     res.status(200).json(customer);
//   } catch (error) {
//     res.status(500).json({ msg: error.message });
//   }
// };

export const getCustomerById = async (req, res) => {
  try {
    const customer = await Customers.findOne({
      attributes: ["uuid", "name", "no_whatsapp"],
      where: {
        uuid: req.params.id
      },
      include: [
        {
          model: Users,
          attributes: ['name', 'email']
        },
        {
          model: Products,
          attributes: ['id', 'name', 'price']
        }
      ]
    });

    if (!customer) return res.status(404).json({ msg: "Data Tidak Ditemukan!" });

    if (req.role === 'admin') {
      // Admin can access all data
      res.status(200).json(customer);
    } else {
      // Check if the customer belongs to the authenticated user
      if (customer.userId === req.userId) {
        res.status(200).json(customer);
      } else {
        // If not, return null or an appropriate message
        res.status(200).json(null);
      }
    }
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};

export const createCustomer = async (req, res) => {
  try {
    const { name, no_whatsapp, productId } = req.body;

    const product = await Products.findByPk(productId);
    if (!product) return res.status(404).json({ msg: "Product Tidak Ditemukan!" });

    const newCustomer = await Customers.create({
      name: name,
      no_whatsapp: no_whatsapp,
      productId: productId,
      userId: req.userId
    });
    res.status(201).json({ msg: "Customer Berhasil Ditambahkan" });
  } catch (error) {
    console.error(error);
    res.status(500).json({ msg: "Gagal Menambahkan Customer" });
  }
};

export const updateCustomer = async (req, res) => {
  const customer = await Customers.findOne({
    where: {
      uuid: req.params.id
    }
  });
  if (!customer) return res.status(404).json({ msg: "Customer Tidak Ditemukan" });
  const { name, no_whatsapp, productId } = req.body;
  try {
    await Customers.update(
      {
        name: name,
        no_whatsapp: no_whatsapp,
        productId: productId
      },
      {
        where: {
          id: customer.id
        },
      }
    );
    res.status(200).json({ msg: "Data Customer Berhasil Diperbarui 🚀" })
  } catch (error) {
    res.status(400).json({ msg: error.message });
  }
}

export const deleteCustomer = async (req, res) => {
  const customer = await Customers.findOne({
    where: {
      uuid: req.params.id
    }
  });
  if (!customer) return res.status(404).json({ msg: "Customer Tidak Ditemukan!" });
  try {
    await Customers.destroy({
      where: {
        id: customer.id
      }
    });
    res.status(200).json({ msg: "Customer Berhasil Dihapus!" })
  } catch (error) {
    res.status(400).json({ msg: error.message });
  }
}

export const getTotalProductPrice = async (req, res) => {
  try {
    let total = 0;
    if (req.role === "admin") {
      const customers = await Customers.findAll({
        include: [{
          model: Products,
          attributes: ['price']
        }],
      });
      total = customers.reduce((sum, customer) => sum + customer.product.price, 0);
    } else {
      const customers = await Customers.findAll({
        where: {
          userId: req.userId
        },
        include: [{
          model: Products,
          attributes: ['price']
        }],
      });
      total = customers.reduce((sum, customer) => sum + customer.product.price, 0);
    }
    res.status(200).json({ total });
  } catch (error) {
    res.status(500).json({ msg: error.message });
  }
};
