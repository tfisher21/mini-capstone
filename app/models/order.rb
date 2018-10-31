class Order < ApplicationRecord
  has_many :carted_products
  has_many :users, through: :carted_products

  def calc_subtotal(carted_products)
    subtotal = 0
    carted_products.each do |carted_product|
      subtotal += carted_product.subtotal
    end
    subtotal
  end

  def calc_tax
    subtotal * (subtotal * 0.09).round(2)
  end

  def calc_total
    subtotal + tax
  end

end