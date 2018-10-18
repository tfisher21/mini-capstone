class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
    render "index.json.jbuilder"
  end

  def create
    @product = Product.new(
      name: params["name"],
      price: params["price"],
      image_url: params["image_url"],
      description: params["description"],
      population: params["population"],
      country: params["country"],
      language: params["language"]
      )

    @product.save

    render "show.json.jbuilder"
  end

  def show
    @product = Product.find_by(id: params[:id])

    render "show.json.jbuilder"
  end

  def update
    @product = Product.find_by(id: params[:id])

    @product.name = params["name"] || @product.name
    @product.price = params["price"] || @product.price
    @product.image_url = params["image_url"] || @product.image_url
    @product.description = params["description"] || @product.description
    @product.population = params["population"] || @product.population
    @product.country = params["country"] || @product.country
    @product.language = params["language"] || @product.language

    @product.save

    render "show.json.jbuilder"
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy

    render json: {message: "And BOOM! goes the city!"}
  end
end