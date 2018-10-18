json.array! @products.each do |product|
  json.partial! "city", product: product
end
