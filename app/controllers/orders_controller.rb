class OrdersController < ApplicationController
  before_action :product_params
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  def index
    @orders = @product.orders
  end

  def show
  end

  def new
    # @order = Order.new
    @order = @product.orders.build
  end

  def create
    @order = @product.orders.build(orders_params)
    if @order.save
      flash[:notice] = "Order successfully created"
      redirect_to product_orders_path(@product)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @order.update(orders_params)
      flash[:notice] = "Order successfully Updated"
      redirect_to product_orders_path(@product)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @order.destroy
    redirect_to product_orders_path(@product)
  end

  private

  def product_params
    @product = Product.find(params[:product_id])
  end

  def set_order
    @order = @product.orders.find(params[:id])
  end

  def orders_params
    params.require(:order).permit(:quantity, :total_price, :product_id)
  end
end
