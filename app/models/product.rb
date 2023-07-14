class Product < ApplicationRecord
  validates :inventory, numericality: true
  validates :inventory, comparison: { greater_than: 0 }
  validates :name, :presence => true
  validates :price, :presence => true
  validates :description, :presence => true
  validates :inventory, :presence => true
  # validates :image_url, :presence => true

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

  def supplier
    Supplier.find_by(id: supplier_id)
  end

  def image 
    Image.find_by(id: image_id)
  end 
end
