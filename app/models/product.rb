class Product < ApplicationRecord
  def is_discounted?
    price < 900
  end

  def tax
    (price * 0.09).round(2)
  end

  def total
    price + tax
  end
end
