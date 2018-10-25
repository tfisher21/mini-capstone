class Api::OrdersController < ApplicationController
  def index
    if current_user
      @orders = current_user.orders
      render "index.json.jbuilder"
    else
      render json: {}, status: :unauthorized
    end
  end

  def create
    if current_user
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
    else
      render json: {}, status: :unauthorized
    end
  end
end
