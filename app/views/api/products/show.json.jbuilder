json.id @product.id
json.name @product.name
json.price @product.price
# json.img_url @product.img_url
json.description @product.description
json.population @product.population
json.country @product.country
json.language @product.language

json.is_discounted? @product.is_discounted?
json.tax @product.tax
json.total @product.total