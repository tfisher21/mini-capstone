# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
#   Product: name:string, price:integer, image_url:string, description:string, population:integer, country:string, language:string

User.create([
  {
    name: "Tyler",
    email: "tyler@example.com",
    password: "password",
    password_confirmation: "password",
  },
  {
    name: "Lesley",
    email: "lesley@example.com",
    password: "password",
    password_confirmation: "password",
  }
])

Supplier.create([
  {
    name: "Goku",
    email: "goku@email.com",
    phone_number: "3459584"
  },
  {
    name: "Krillin",
    email: "krillin@email.com",
    phone_number: "5948333"
  },
  {
    name: "Bulma",
    email: "bulma@email.com",
    phone_number: "6973345"
  }
])

Product.create([
  {
    city_name: "Tokyo",
    price: 997,
    description: "The most populous city in the world.",
    population: 13513734,
    country: "Japan",
    stock: true,
    supplier_id: 3
  },
  {
    city_name: "Sao Paulo",
    price: 912,
    description: "The name of the city honors the Apostle, Saint Paul of Tarsus.",
    population: 12038175,
    country: "Brazil",
    stock: false,
    supplier_id: 1
  },
  {
    city_name: "Seoul",
    price: 833,
    description: "Strategically situated on the Han River, Seoul's history stretches back over two thousand years, when it was founded in 18 BC by the people of Baekje, one of the Three Kingdoms of Korea.",
    population: 10197604,
    country: "South Korea",
    stock: true,
    supplier_id: 2
  },
  {
    city_name: "Houston",
    price: 750,
    description: "In the mid-20th century, Houston's economy diversified as it became home to the Texas Medical Center—the world's largest concentration of healthcare and research institutions—and NASA's Johnson Space Center, where the Mission Control Center is located.",
    population: 2099451,
    country: "United States",
    stock: true,
    supplier_id: 2
  },
  {
    city_name: "Madrid",
    price: 860,
    description: "While Madrid possesses modern infrastructure, it has preserved the look and feel of many of its historic neighbourhoods and streets.",
    population: 3141991,
    country: "Spain",
    stock: true,
    supplier_id: 2
  }
])

Image.create([
  {
    name: "Tokyo At Night",
    source: "tokyo_at_night.jpg",
    product_id: 1
  },
  {
    name: "Sao Paulo during the day",
    source: "daytime_sao_paulo.png",
    product_id: 2
  },
  {
    name: "Seoul Skyline",
    source: "seoul_skyline.jpg",
    product_id: 4
  },
  {
    name: "Tokyo Rail Station",
    source: "tokyo_rail_station.png",
    product_id: 1
  }
])

Category.create([
  {
    language: "Japanese"
  },
  {
    language: "English"
  },
  {
    language: "Portuguese"
  },
  {
    language: "Spanish"
  },
  {
    language: "Korean"
  }
])

CategoryProduct.create([
  {
    category_id: 1,
    product_id: 1
  },
  {
    category_id: 2,
    product_id: 4
  },
  {
    category_id: 3,
    product_id: 2
  },
  {
    category_id: 4,
    product_id: 4
  },
  {
    category_id: 4,
    product_id: 5
  },
  {
    category_id: 5,
    product_id: 3
  },
])