class Product {
  final String name;
  final double price;
  // final String imagePath;
  final String description;
  final String category;

  Product({
    required this.name,
    required this.price,
    // required this.imagePath,
    required this.description,
    required this.category,
  });
}

List<Product> products = [
  Product(
    name: "Cotton T-Shirt",
    price: 29.99,
    description:
        "This organic cotton t-shirt is made from sustainably sourced materials, offering a comfortable fit while reducing environmental impact.",
    category: "Apparel",
  ),
  Product(
    name: "Water Bottle",
    price: 19.99,
    description:
        "Say goodbye to single-use plastic bottles with this durable stainless steel water bottle, perfect for staying hydrated on the go while reducing plastic waste.",
    category: "Accessories",
  ),
  Product(
    name: "Bamboo Toothbrush Set",
    price: 9.99,
    description:
        "Upgrade your oral hygiene routine with this eco-friendly bamboo toothbrush set, featuring biodegradable handles and soft bristles.",
    category: "Health",
  ),
  Product(
    name: "LED Lantern",
    price: 39.99,
    description:
        "Illuminate your outdoor adventures sustainably with this solar-powered LED lantern, providing reliable lighting without the need for batteries.",
    category: "Outdoor Gear",
  ),
  Product(
    name: "Notebook",
    price: 12.99,
    description:
        "Jot down your thoughts and ideas in this stylish recycled paper notebook, featuring a durable cover and sustainable paper pages.",
    category: "Stationery",
  ),
  Product(
    name: "Cotton Hoodie",
    price: 49.99,
    description:
        "Stay cozy and eco-conscious in this organic cotton hoodie, featuring a relaxed fit and sustainable materials.",
    category: "Apparel",
  ),
  Product(
    name: "Backpack",
    price: 34.99,
    description:
        "Carry your essentials in style with this durable backpack made from recycled polyester, offering plenty of storage and eco-friendly construction.",
    category: "Accessories",
  ),
  Product(
    name: "Bamboo Cutlery Set",
    price: 14.99,
    description:
        "Ditch disposable utensils and opt for this bamboo cutlery set, perfect for on-the-go meals and reducing single-use plastic waste.",
    category: "Health",
  ),
  Product(
    name: "Phone Charger",
    price: 29.99,
    description:
        "Charge your devices sustainably with this solar-powered phone charger, featuring multiple charging ports and a compact design for easy portability.",
    category: "Outdoor Gear",
  ),
  Product(
    name: "Glass Water Bottle",
    price: 24.99,
    description:
        "Sip in style while reducing your carbon footprint with this sleek recycled glass water bottle, featuring a silicone sleeve for added durability.",
    category: "Accessories",
  ),
  Product(
    name: "Cotton Yoga Pants",
    price: 39.99,
    description:
        "Practice yoga comfortably and sustainably in these organic cotton yoga pants, designed for flexibility and breathability.",
    category: "Apparel",
  ),
  Product(
    name: "Bamboo Toothbrush Holder",
    price: 7.99,
    description:
        "Keep your bathroom organized and eco-friendly with this biodegradable bamboo toothbrush holder, perfect for storing your bamboo toothbrushes.",
    category: "Health",
  ),
  Product(
    name: "Camping Lantern",
    price: 49.99,
    description:
        "Light up your campsite responsibly with this solar-powered camping lantern, featuring adjustable brightness settings and a compact design for easy packing.",
    category: "Outdoor Gear",
  ),
  Product(
    name: "Planner",
    price: 19.99,
    description:
        "Stay organized and sustainable with this recycled paper planner, featuring monthly and weekly layouts and eco-friendly materials.",
    category: "Stationery",
  ),
];
