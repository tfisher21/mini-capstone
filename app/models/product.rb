class Product < ApplicationRecord
  validates :city_name, presence: true
  validates :city_name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0}
  validates :description, length: {in: 10..500}


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
