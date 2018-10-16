require "http"
require "tty-prompt"
require "tty-table"

prompt = TTY::Prompt.new

response = HTTP.get("http://localhost:3000/api/products").parse
# pp response

products = []
response.each do |city|
  products << ["#{city["name"]}", "#{city["population"]}", "#{city["country"]}"]
end

table = TTY::Table.new ['Name','Population', 'Country'], products

puts table.render(:ascii)

cities_prompt = []
products.each do |product|
  cities_prompt << product[0]
end

city = prompt.select("Please select a city to see more information.", cities_prompt)