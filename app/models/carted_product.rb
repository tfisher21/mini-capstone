class CartedProduct < ApplicationRecord
  belongs_to :user
  belongs_to :product
  belongs_to :order, optional: true

  def subtotal
    subtotal = product.price * quantity
  end
end