class Api::ProductsController < ApplicationController
  def all_products
    @products = Product.all
    render "all_products.json.jbuilder"
  end

  def product
    @product = Product.find_by("name": params[:name])

    render "product.json.jbuilder"
  end
end
