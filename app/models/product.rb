class Product < ApplicationRecord
  validates :price, :presence => true
  validates

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
