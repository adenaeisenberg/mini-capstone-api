class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product

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
