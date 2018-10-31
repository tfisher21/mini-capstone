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

    @order = Order.new(
      user_id: current_user.id,
    )

    @order.subtotal = @order.calc_subtotal(carted_products)
    @order.tax = @order.calc_tax
    @order.total = @order.calc_total

    if @order.save
      @order.ordered_cart(carted_products)
      render "show.json.jbuilder"
    else
      render json: {errors: @order.errors.full_messages}
    end
  end
end
