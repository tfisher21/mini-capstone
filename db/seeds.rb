# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
#   Product: name:string, price:integer, image_url:string, description:string, population:integer, country:string, language:string

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
    language: "Japanese",
    stock: true,
    supplier_id: 3
  },
  {
    city_name: "Sao Paulo",
    price: 912,
    description: "The name of the city honors the Apostle, Saint Paul of Tarsus.",
    population: 12038175,
    country: "Brazil",
    language: "Portuguese",
    stock: false,
    supplier_id: 1
  },
  {
    city_name: "Jakarta",
    price: 899,
    description: "It was the de facto capital of the Dutch East Indies.",
    population: 10075310,
    country: "Indonesia",
    language: "Javanese",
    stock: true,
    supplier_id: 2
  },
  {
    city_name: "Seoul",
    price: 833,
    description: "Strategically situated on the Han River, Seoul's history stretches back over two thousand years, when it was founded in 18 BC by the people of Baekje, one of the Three Kingdoms of Korea.",
    population: 10197604,
    country: "South Korea",
    language: "Korean",
    stock: true,
    supplier_id: 2
  },
  {
    city_name: "Manila",
    price: 801,
    description: "The Spanish city of Manila was founded on June 24, 1571, by Spanish conquistador Miguel López de Legazpi. The date is regarded as the city's official founding date.",
    population: 1780148,
    country: "Phillipines",
    language: "Filipino",
    stock: false,
    supplier_id: 1
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
    name: "Jakarta Nightlife",
    source: "jakarta.nightlife.ong",
    product_id: 3
  },
  {
    name: "Seoul Skyline",
    source: "seoul_skyline.jpg",
    product_id: 4
  },
  {
    name: "Manila Landmarks",
    source: "manila_landmarks.jpg",
    product_id: 5
  },
  {
    name: "Tokyo Rail Station",
    source: "tokyo_rail_station.png",
    product_id: 1
  }
])