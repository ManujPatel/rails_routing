class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def show
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(products_params)
    if @product.save
      flash[:notice] = "Product successfully Created"
      redirect_to products_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @product = Product.update(products_params)
      flash[:notice] = "Product successfully Updated"
      redirect_to products_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @product.destroy
    redirect_to products_path
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def products_params
    params.require(:product).permit(:title, :description, :price)
  end
end
