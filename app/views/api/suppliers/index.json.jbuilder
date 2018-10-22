json.array! @suppliers.each do |supplier|
  json.partial! "supplier", supplier: supplier
end
