class ProductsController < ApplicationController
  def show_all_product
    @products = Product.all
    render template: "products/index"
  end

  def show_one_product
    @product = Product.first
    render template: "products/show"
  end
end
