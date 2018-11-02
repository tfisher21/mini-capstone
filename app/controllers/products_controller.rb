class ProductsController < ApplicationController
  def index
    @products = Product.all

    render "index.html.erb"
  end

  def new
    @suppliers = Supplier.all
    render "new.html.erb"
  end

  def create
    @product = Product.new(
      city_name: params[:city_name],
      price: params[:price],
      description: params[:description],
      population: params[:population],
      country: params[:country],
      supplier_id: params[:supplier],
    )

    @product.save

    redirect_to "/products/#{@product.id}"
  end

  def show
    @product = Product.find_by(id: params[:id])
    render "show.html.erb"
  end

  def edit
    @product = Product.find_by(id: params[:id])
    render "edit.html.erb"
  end
end
