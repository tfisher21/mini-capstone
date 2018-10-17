require "http"
require "tty-prompt"
require "tty-table"


def update_data
  response = HTTP.get("http://localhost:3000/api/products").parse

  @cities = []
  response.each do |city|
    @cities << {
      id: city["id"],
      name: city["name"],
      price: city["price"],
      image_url: city["image_url"],
      description: city["description"],
      population: city["population"],
      country: city["country"],
      language: city["language"],
    }
  end
end

def print_title
  system 'clear'
  puts "*" * 24
  puts "* #{"City Broker".center(20)} *"
  puts "*" * 24
end

def print_table
  city_table = []
  @cities.each do |city|
    city_table << [city[:name], city[:country]]
  end
  table = TTY::Table.new ['Name', 'Country'], city_table

  puts table.render(:ascii)
end

def select_city # Prompts the user to select a city and returns the city
  cities_prompt = []
  @cities.each_index do |i|
    cities_prompt << {name: @cities[i][:name], value: i}
  end

  prompt = TTY::Prompt.new

  city_prompt = prompt.select("Please select a city to see more information.", cities_prompt)

  return city_prompt
end

def display_city
  city_index = select_city
  @cities[city_index].each_key do |k|
    puts "#{k}: #{@cities[city_index][k]}"
  end
  gets.chomp
end


###
while true
  update_data
  print_title
  print_table
  display_city
end



###
# prompt = TTY::Prompt.new

# response = HTTP.get("http://localhost:3000/api/products").parse
# pp response

# p response[0]["name"]

# products = []
# response.each do |city|
#   products << ["#{city["name"]}", "#{city["population"]}", "#{city["country"]}"]
# end

# table = TTY::Table.new ['Name','Population', 'Country'], products

# puts table.render(:ascii)

# cities_prompt = []
# products.each do |product|
#   cities_prompt << product[0]
# end

# city_prompt = prompt.select("Please select a city to see more information.", cities_prompt)


# city = ""
# response.each do |x|
#   if x["name"] == city_prompt
#     city = x
#   end
# end

# city.each_key do |k|
#   puts "#{k}: #{city[k]}"
# end