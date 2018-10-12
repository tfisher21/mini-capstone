require "http"
require "tty-prompt"
require "tty-table"

response = HTTP.get("http://localhost:3000/api/all_products").parse
# pp response["products"][0]["name"]

products = []
response["products"].each do |city|
  products << ["#{city["name"]}", "#{city["population"]}"]
end

table = TTY::Table.new ['Name','Population'], products

puts table.render(:ascii)