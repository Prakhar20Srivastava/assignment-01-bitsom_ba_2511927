// OP1: insertMany() — insert all 3 documents from sample_documents.json


db.products.insertMany([
  {
    product_id: "E3003",
    name: "Bluetooth Soundbar",
    category: "Electronics",
    brand: "Sony",
    price: 8999,
    specifications: {
      power_output: "320W",
      connectivity: ["Bluetooth", "HDMI", "USB"],
      audio_technology: "Dolby Digital",
      voltage: "220V"
    },
    warranty: {
      period: "1 year",
      type: "Manufacturer"
    },
    ratings: {
      average: 4.3,
      reviews: 410
    }
  },
  {
    product_id: "C4003",
    name: "Women's Ethnic Kurta",
    category: "Clothing",
    brand: "Biba",
    price: 2499,
    sizes_available: ["S", "M", "L", "XL"],
    material: "Rayon",
    color_options: ["Red", "Green", "Mustard"],
    care_instructions: {
      wash: "Machine wash cold",
      dry: "Line dry",
      iron: "Low heat"
    },
    ratings: {
      average: 4.1,
      reviews: 275
    }
  },
  {
    product_id: "G5002",
    name: "Basmati Rice 5kg",
    category: "Groceries",
    brand: "Daawat",
    price: 950,
    weight: "5kg",
    expiry_date: new Date("2026-06-30"),
    nutritional_info: {
      calories: 130,
      carbohydrates: "28g",
      protein: "2.7g"
    },
    storage_instructions: "Store in a cool, dry place",
    ingredients: ["Basmati Rice"],
    ratings: {
      average: 4.6,
      reviews: 1020
    }
  }
]);


// OP2: find() — retrieve all Electronics products with price > 20000
db.products.find({
  category: "Electronics",
  price: { $gt: 20000 }
});


// OP3: find() — retrieve all Groceries expiring before 2025-01-01
db.products.find({
  category: "Groceries",
  expiry_date: { $lt: new Date("2025-01-01") }
});


// OP4: updateOne() — add a "discount_percent" field to a specific product
db.products.updateOne(
  { product_id: "E3003" },
  {
    $set: { discount_percent: 10 }
  }
);


// OP5: createIndex() — create an index on category field and explain why
db.products.createIndex({ category: 1 });

//Improves filtering performance on large datasets
//Especially useful since category is frequently queried
