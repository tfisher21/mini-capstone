class Api::SuppliersController < ApplicationController
  def index
    @suppliers = Supplier.all

    if params[:search]
      @suppliers = @suppliers.where("name ILIKE ?", "%#{params["search"]}%")
    end

    if params[:price_sort]
      @suppliers = @suppliers.order(price: :asc)  # Set to ascend to confirm change
    else
      @suppliers = @suppliers.order(:id)
    end

    render "index.json.jbuilder"
  end

  def create
    @supplier = Supplier.new(
      name: params[:city_name],
      email: params[:email],
      phone_number: params[:phone_number]
      )

    if @supplier.save
      render "show.json.jbuilder"
    else
      render json: {errors: @supplier.errors.full_messages}, status: 406
    end
  end

  def show
    @supplier = Supplier.find_by(id: params[:id])

    render "show.json.jbuilder"
  end

  def update
    @supplier = Supplier.find_by(id: params[:id])

    @supplier.name = params[:name] || @supplier.name
    @supplier.email = params[:email] || @supplier.email
    @supplier.phone_number = params[:phone_number] || @supplier.phone_number

    @supplier.save

    if @supplier.save
      render "show.json.jbuilder"
    else
      render json: {errors: @supplier.errors.full_messages}, status: 406
    end
  end

  def destroy
    @supplier = Supplier.find_by(id: params[:id])
    @supplier.destroy

    render json: {message: "And capice, you terrible supplier!"}
  end
end