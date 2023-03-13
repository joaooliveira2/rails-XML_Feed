class Vivino < ApplicationRecord

  products = [
    {
      product_name: "Vinho branco",
      price: 12.99,
      quantity_is_minimum:false,
      bottle_size:750,
      bottle_quantity:1,
      link:"https://www.fantasticwines.com/product/12345",
      inventory_count:17,
      product_id:12345,

    },
    {
      product_name: "Vinho tinto",
      price: 12.99,
      quantity_is_minimum:false,
      bottle_size:750,
      bottle_quantity:1,
      link:"https://www.fantasticwines.com/product/12345",
      inventory_count:17,
      product_id:12346,
    },
    {
      product_name: "Vinho verde",
      price: 12.99,
      quantity_is_minimum:false,
      bottle_size:750,
      bottle_quantity:1,
      link:"https://www.fantasticwines.com/product/12345",
      inventory_count:17,
      product_id:12347,
    }
  ]


end