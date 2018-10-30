class Order < ApplicationRecord
  has_many :carted_products
  has_many :users, through: :carted_products
end
