class OrdersController < ApplicationController
  def create
    product = Product.find_by(id: params[:product_id])

    calculated_subtotal = product.price * params[:quantity].to_i 
    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_subtotal + calculated_tax

    @order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total,
    )

    if @order.save
      render :show
    else
      render json: { message: "User must be signed in." }, status: :unprocessable_entity
    end
  end

  def show
    if current_user
      @order = current_user.orders.find_by(id: params[:id])
      render :show
    else
      render json: { message: "Please sign in to view your orders." }, status: :unauthorized
    end
  end

  def index
    if current_user
      @orders = current_user.orders
      render :index
    else
      render json: { message: "Please sign in to view your orders." }, status: :unauthorized
    end
  end
end
