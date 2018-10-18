# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
#   Product: name:string, price:integer, image_url:string, description:string, population:integer, country:string, language:string

Product.create([
  {
    city_name: "Tokyo",
    price: 997,
    image_url: "https://upload.wikimedia.org/wikipedia/commons/d/dc/Skyscrapers_of_Shinjuku_2009_January_%28revised%29.jpg",
    description: "The most populous city in the world.",
    population: 13513734,
    country: "Japan",
    language: "Japanese",
    stock: true
  },
  {
    city_name: "Sao Paulo",
    price: 912,
    image_url: "https://upload.wikimedia.org/wikipedia/commons/2/23/MarginalPinheiros.jpg",
    description: "The name of the city honors the Apostle, Saint Paul of Tarsus.",
    population: 12038175,
    country: "Brazil",
    language: "Portuguese",
    stock: false
  },
  {
    city_name: "Jakarta",
    price: 899,
    image_url: "https://upload.wikimedia.org/wikipedia/commons/8/85/SCBD%2C_Jakarta.jpg",
    description: "It was the de facto capital of the Dutch East Indies.",
    population: 10075310,
    country: "Indonesia",
    language: "Javanese",
    stock: true
  },
  {
    city_name: "Seoul",
    price: 833,
    image_url: "https://upload.wikimedia.org/wikipedia/commons/4/44/%EC%84%9C%EC%9A%B8%ED%8A%B9%EB%B3%84%EC%8B%9C_%EC%A0%84%EA%B2%BD_%EC%82%AC%EC%A7%84_%EC%82%AC%EB%B3%B8_-%EC%84%9C%EC%9A%B8%EC%A4%91%EC%8B%AC%EB%B6%80%EC%9D%B4%EB%AF%B8%EC%A7%801.jpg",
    description: "Strategically situated on the Han River, Seoul's history stretches back over two thousand years, when it was founded in 18 BC by the people of Baekje, one of the Three Kingdoms of Korea.",
    population: 10197604,
    country: "South Korea",
    language: "Korean",
    stock: true
  },
  {
    city_name: "Manila",
    price: 801,
    image_url: "https://upload.wikimedia.org/wikipedia/commons/9/92/Manila_by_night.jpg",
    description: "The Spanish city of Manila was founded on June 24, 1571, by Spanish conquistador Miguel López de Legazpi. The date is regarded as the city's official founding date.",
    population: 1780148,
    country: "Phillipines",
    language: "Filipino",
    stock: false
  }
])