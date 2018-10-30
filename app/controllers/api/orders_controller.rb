class Api::OrdersController < ApplicationController
  before_action :authenticate_user
  def index
    @orders = current_user.orders
    render "index.json.jbuilder"
  end

  def create
    carted_products = CartedProduct.where(
      "user_id = ? AND status LIKE ?",
      current_user.id,
      "carted"
    )

    subtotal = 0

    carted_products.each do |carted_product|
      subtotal += carted_product.product.price * carted_product.quantity
    end

    tax = (subtotal * 0.09).round(2)

    total = subtotal + tax

    @order = Order.new(
      user_id: current_user.id,
      subtotal: subtotal,
      tax: tax,
      total: total
    )

    if @order.save
      carted_products.each do |carted_product|
        carted_product.status = "purchased"
        carted_product.order_id = @order.id
        carted_product.save
      end
      render "show.json.jbuilder"
    else
      render json: {errors: @order.errors.full_messages}
    end
  end
end
