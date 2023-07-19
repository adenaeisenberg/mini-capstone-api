class Product < ApplicationRecord
  validates :inventory, numericality: true
  validates :inventory, comparison: { greater_than: 0 }
  validates :name, :presence => true
  validates :price, :presence => true
  validates :description, :presence => true
  validates :inventory, :presence => true

  belongs_to :supplier
  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end
  
  has_many :images
  # def images
  #   Image.where(product_id: id)
  # end

  belongs_to :order

  def is_discounted?
    if price <= 10
      true
    else
      false
    end
  end

  def tax
    tax = price * 0.09
  end

  def total
    total = tax + price
  end
end
