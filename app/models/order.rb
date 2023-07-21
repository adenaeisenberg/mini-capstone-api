class Order < ApplicationRecord
  belongs_to :user
  has_many :products, through: :carted_products

  # def subtotal
  #   products
  # end

  # def tax
  #   tax = price * 0.09
  # end

  # def total
  #   total = tax + price
  # end
end
