class Api::OrdersController < ApplicationController
  def index
    @orders = current_user.orders

    render "index.json.jbuilder"
  end

  def create
    
    product = Product.find_by(id: params[:product_id])
    price = product.price
    subtotal = price * params[:quantity].to_i
    tax = subtotal * 0.08
    total = subtotal + tax


    @order = Order.new(
      product_id: params[:product_id],
      quantity: params[:quantity],
      user_id: current_user.id,
      subtotal: subtotal,
      tax: tax,
      total: total
    )

    if @order.save
      render "show.json.jbuilder"
    else
      render json: {errors: @order.errors.full_messages}
    end
  end
end
