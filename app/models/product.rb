class Product < ApplicationRecord
  validates :city_name, presence: true
  validates :city_name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0}
  validates :description, length: {in: 10..500}

  belongs_to :supplier # This does the same as the below commented code
  # def supplier
  #   supplier = Supplier.find_by(id: supplier_id)
  # end

  has_many :category_products
  has_many :categories, through: :category_products

  has_many :carted_products
  has_many :orders, through: :carted_products

  has_many :images # This does the same as the below commented code
  # def images
  #   images = Image.where(product_id: id)
  # end

  def supplier_format
    {
      supplier_id: supplier.id,
      supplier_name: supplier.name,
      supplier_email: supplier.email,
      supplier_phone_number: supplier.phone_number
    }
  end

  def images_format
    images.map { |image| {
      image_id: image.id,
      image_name: image.name,
      image_source: image.source
    }}
  end

  def is_discounted?
    price < 900
  end

  def tax
    (price * 0.09).round(2)
  end

  def total
    price + tax
  end

  def languages
    categories.map { |category| category.language }
  end
end
