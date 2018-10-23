class Api::ProductsController < ApplicationController
  def index
    @products = Product.all

    if params["search"]
      @products = @products.where("city_name ILIKE ?", "%#{params["search"]}%")
    end

    if params["price_sort"]
      @products = @products.order(price: :asc)  # Set to ascend to confirm change
    else
      @products = @products.order(:id)
    end

    render "index.json.jbuilder"
  end

  def create
    @product = Product.new(
      city_name: params["city_name"],
      price: params["price"],
      description: params["description"],
      population: params["population"],
      country: params["country"],
      language: params["language"],
      stock: params["stock"],
      supplier_id: params["supplier_id"]
      )

    if @product.save
      render "show.json.jbuilder"
    else
      render json: {errors: @product.errors.full_messages}, status: 406
    end
  end

  def show
    @product = Product.find_by(id: params[:id])

    render "show.json.jbuilder"
  end

  def update
    @product = Product.find_by(id: params[:id])

    @product.city_name = params["city_name"] || @product.city_name
    @product.price = params["price"] || @product.price
    @product.description = params["description"] || @product.description
    @product.population = params["population"] || @product.population
    @product.country = params["country"] || @product.country
    @product.language = params["language"] || @product.language
    @product.stock = params["stock"] || @product.stock
    @product.supplier_id = params["supplier_id"] || @product.supplier_id

    @product.save

    if @product.save
      render "show.json.jbuilder"
    else
      render json: {errors: @product.errors.full_messages}, status: 406
    end
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy

    render json: {message: "And BOOM! goes the city!"}
  end
end