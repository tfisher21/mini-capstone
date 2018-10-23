class Product < ApplicationRecord
  validates :city_name, presence: true
  validates :city_name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0}
  validates :description, length: {in: 10..500}

  belongs_to :supplier
  # def supplier
  #   supplier = Supplier.find_by(id: supplier_id)
  # end

  has_many :images
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
end
