class ProductsController < ApplicationController
  def index
    @products = Product.all
    render template: "products/index"
  end

  def show
    @product = Product.find_by(id: params["id"])
    render template: "products/show"
  end

  def create
    @product = Product.create(
      name: "step stool",
      price: 30,
      image_url: "https://i5.walmartimages.com/asr/9e7ce600-5d94-4042-9158-6caf19915761.763e34bb6172e5dffc9f9ed476293be7.jpeg",
      description: "Step stool help you reach high places in your kitchen",
    )
    render :show
  end
end
