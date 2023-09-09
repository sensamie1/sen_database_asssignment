
// use sen_products_database

// created collecttions
db.createCollection('products')
db.createCollection('categories')
db.createCollection('product_categories')
db.createCollection('users')
db.createCollection('admin')
db.createCollection('orders')
db.createCollection('order_products')
db.createCollection('payment')
db.createCollection('shipping')

// insert data into categories
db.categories.insertMany([
  { 
    _id: 1, 
    name: 'Electronics', 
    description: 'A category for electronic gadgets and devices.' 
  },
  { 
    _id: 2, 
    name: 'Clothing', 
    description: 'A category for fashionable clothing items.' 
  },
  { 
    _id: 3, 
    name: 'Home Decor', 
    description: 'A category for home decoration and furnishing items.' 
  },
]);

// insert data into products
db.products.insertMany([
  { 
    _id: 1, 
    name: 'Laptop', 
    price_$: 999.90, 
    size: 'medium', 
    description: 'A high-performance laptop with a powerful processor and a large SSD.', 
    avaliability: 'in stock', 
    created_at: Date(), 
    updated_at: Date()
  },
  {
    _id: 2, 
    name: 'Smart TV', 
    price_$: 649.99, 
    size: 'medium', 
    description: 'A 55-inch 4K Ultra HD Smart TV with built-in streaming apps.', 
    avaliability: 'in stock', 
    created_at: Date(), 
    updated_at: Date()
  },
  {
    _id: 3, 
    name: 'Wireless Headphones', 
    price_$: 199.90, 
    size: 'medium', 
    description: 'Noise-canceling wireless headphones with long battery life.', 
    avaliability: 'in stock', 
    created_at: Date(), 
    updated_at: Date()
  },
  {
    _id: 4, 
    name: 'Jeans', 
    price_$: 99.90, 
    size: 'large', 
    description: 'Classic fit jeans made from durable denim fabric.', 
    avaliability: 'in stock', 
    created_at: Date(), 
    updated_at: Date()
  },
  {
    _id: 5, 
    name: 'Dress', 
    price_$: 79.90, 
    size: 'medium', 
    description: 'A stylish knee-length dress perfect for special occasions.', 
    avaliability: 'in stock', 
    created_at: Date(), 
    updated_at: Date()
  },
  {
    _id: 6, 
    name: 'T-shirt', 
    price_$: 15.90, 
    size: 'small', 
    description: 'Comfortable and colorful t-shirt for children.', 
    avaliability: 'in stock', 
    created_at: Date(), 
    updated_at: Date()
  },
  {
    _id: 7, 
    name: 'Table Lamp', 
    price_$: 40.90, 
    size: 'small', 
    description: 'Elegant table lamp with a ceramic base and fabric shade.', 
    avaliability: 'in stock', 
    created_at: Date(), 
    updated_at: Date()
  },
  {
    _id: 8, 
    name: 'Wall Art', 
    price_$: 15.90, 
    size: 'large', 
    description: 'Canvas wall art featuring a scenic landscape painting.', 
    avaliability: 'in stock', 
    created_at: Date(), 
    updated_at: Date()
  },
  {
    _id: 9, 
    name: 'Throw Pillow', 
    price_$: 20.90, 
    size: 'medium', 
    description: 'Decorative throw pillow with a geometric pattern.', 
    avaliability: 'in stock', 
    created_at: Date(), 
    updated_at: Date()
  },
  {
    _id: 10, 
    name: 'Mattress', 
    price_$: 50.90, 
    size: 'large', 
    description: 'Sleping equipment.', 
    avaliability: 'in stock', 
    created_at: Date(), 
    updated_at: Date()
  },
  {
    _id: 11, 
    name: 'Table', 
    price_$: 10.90, 
    size: 'large', 
    description: 'Dinning Equipment.', 
    avaliability: 'in stock', 
    created_at: Date(), 
    updated_at: Date()
  }
]);

// insert data into product_categories
db.product_categories.insertMany([
  {_id: 1, product_id: 1, category_id: 1},
  {_id: 2, product_id: 2, category_id: 1},
  {_id: 3, product_id: 3, category_id: 1},
  
  {_id: 4, product_id: 4, category_id: 2},
  {_id: 5, product_id: 5, category_id: 2},
  {_id: 6, product_id: 6, category_id: 2},
  
  {_id: 7, product_id: 7, category_id: 3},
  {_id: 8, product_id: 7, category_id: 1},
  {_id: 9, product_id: 8, category_id: 3},
  {_id: 10, product_id: 9, category_id: 3},

]);

// insert data into users
db.users.insertMany([
  {
    _id: 1, 
    first_name: 'Sen', 
    last_name: 'Samie', 
    email: 'sensamie1@gamil.com', 
    password: '123456', 
    phone_number: '+24383427375', 
    address: '3, Choba', 
    city: 'Port Harcourt', 
    state: 'Rivers', 
    postal_code: '5120226'
  },
  {
    _id: 2, 
    first_name: 'Kelvin', 
    last_name: 'Chukwudi', 
    email: 'kev2@gamil.com', 
    password: '123456', 
    phone_number: '+24345567423', 
    address: '5, Rumuokro', 
    city: 'Port Harcourt', 
    state: 'Rivers', 
    postal_code: '5130022'
  },
  {
    _id: 3, 
    first_name: 'Joshua', 
    last_name: 'Eemka', 
    email: 'josh12@gamil.com', 
    password: '123456', 
    phone_number: '+24345567473',
    address: '7, Mile 1', 
    city: 'Lagos', 
    state: 'Lagos', 
    postal_code: '5131478'
  },
  {
    _id: 4, 
    first_name: 'Francis', 
    last_name: 'John', 
    email: 'farncisj12@gamil.com', 
    password: '123456', 
    phone_number: '+24347467423',
    address: '2, Summit', 
    city: 'Asaba', 
    state: 'Delta', 
    postal_code: '3891478'
  },
  {
    _id: 5, 
    first_name: 'Chigozi', 
    last_name: 'Nonso', 
    email: 'chinons34@gamil.com', 
    password: '123456', 
    phone_number: '+24345552373',
    address: '4, PTI Road', 
    city: 'Warri', 
    state: 'Delta', 
    postal_code: '3578478'
  },
  {
    _id: 6, 
    first_name: 'Gideon', 
    last_name: 'Gizeric', 
    email: 'gizgid23@gamil.com', 
    password: '123456', 
    phone_number: '+24345789373',
    address: '7, Ring Road', 
    city: 'Benin', 
    state: 'Edo', 
    postal_code: '3572378'
  },
  {
    _id: 7, 
    first_name: 'Paul', 
    last_name: 'Okolo', 
    email: 'poko12@gamil.com', 
    password: '123456', 
    phone_number: '+24344289373',
    address: '9, Jagua Street', 
    city: 'Benin', 
    state: 'Edo', 
    postal_code: '3572378'
  },
]);

//insert data into admin
db.admin.insertMany([
  { _id: 1, name: 'Sen Samie', role: 'SuperAdmin', created_at: Date(), user_id: 1 },
  { _id: 2, name: 'Kelvin Chukwudi', role: 'Moderator', created_at: Date(), user_id: 2 }
]);

//get all products
db.products.find({})

//get all users
db.users.find({})

// get products based on id
db.products.find({ _id: 1 })

db.products.findOne({ _id: 1 })

// get users based on id
db.users.find({ _id: 1 })

db.users.findOne({ _id: 1 })

// get all categories and products therein 
db.categories.aggregate([ { $lookup: { from: 'product_categories', localField: '_id', foreignField: 'category_id', as :'products' }}])

// get all products and categories they belong 
db.products.aggregate([ { $lookup: { from: 'product_categories', localField: '_id', foreignField: 'product_id', as :'categories' }}])

// update products
db.products.update(
  { _id: 10, },
  { $set: { name: 'Bed'} } 
);

// update users
db.users.update(
  { _id: 6, },
  { $set: { email: 'gideongiz12@gmail.com'} } 
);

// delete product
db.products.deleteOne(
  { _id: 11, } 
);

//delete user
db.users.deleteOne(
  { _id: 7, }
)
