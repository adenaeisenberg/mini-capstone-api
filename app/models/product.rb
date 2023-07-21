class Product < ApplicationRecord
  validates :quantity, numericality: true
  validates :quantity, comparison: { greater_than: 0 }
  validates :name, :presence => true
  validates :price, :presence => true
  validates :description, :presence => true
  validates :quantity, :presence => true

  has_many :orders, through: :carted_products 
  belongs_to :supplier
  has_many :images
  has_many :category_products
  has_many :categories, through: :category_products

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
