class ProductsController < ApplicationController
  def index
    pp current_user
    @products = Product.all
    render template: "products/index"
  end

  def show
    @product = Product.find_by(id: params["id"])
    render template: "products/show"
  end

  def create
    @product = Product.create(
      name: params["name"],
      price: params["price"],
      image: params["image"],
      description: params["description"],
      inventory: params["inventory"],
    )
    if @product.save
      render :show
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @product = Product.find_by(id: params["id"])
    @product.update(
      name: params["name"] || @product.name,
      price: params["price"] || @product.price,
      image: params["image"] || @product.image,
      description: params["description"] || @product.description,
      inventory: params["inventory"] || @product.inventory,
    )
    if @product.save
      render :show
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    product = Product.find_by(id: params["id"])
    product.destroy
    render json: { message: "This product has been deleted!" }
  end
end
