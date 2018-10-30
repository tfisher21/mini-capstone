json.array! @carted_products.each do |carted_product|
  json.id carted_product.id
  json.product carted_product.product.city_name
  json.quantity carted_product.quantity
  json.user carted_product.user.name
end