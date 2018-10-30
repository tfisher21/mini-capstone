class Api::CartedProductsController < ApplicationController
  def index
    @carted_products = CartedProduct.where(
      "user_id = ? AND status LIKE ?",
       current_user.id,
       "carted"
     )

    render "index.json.jbuilder"
  end

  def create
    @carted_product = CartedProduct.new(
        product_id: params[:product_id],
        quantity: params[:quantity],
        user_id: current_user.id,
        status: "carted"
      )

    if @carted_product.save
      render "show.json.jbuilder"
    else
      render json: {errors: @carted_product.errors.full_messages}
    end
  end

  def destroy
    @carted_product = CartedProduct.find_by(id: params[:id])

    @carted_product.status = "removed" || @carted_product.status
    @carted_product.save

    render json: {message: "Product Removed From Cart"}
  end
end
