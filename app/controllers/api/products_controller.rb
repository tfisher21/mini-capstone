class Api::ProductsController < ApplicationController
  def all_products
    @products = Product.all
    render "all_products.json.jbuilder"
  end

  def first_product
    @product = Product.first
    render "first_product.json.jbuilder"
  end

  def last_product
    @product = Product.first
    render "last_product.json.jbuilder"
  end

  def random_product
    random_id = rand(5) + 1
    @product = Product.find_by(id: random_id)
    render "random_product.json.jbuilder"
  end
end
