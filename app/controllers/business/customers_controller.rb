class Business::CustomersController < ApplicationController
  before_action :set_cutomer, only: [:preview, :edit, :update, :delete_customer]

  def index
    @customers = Customer.all
  end

  def preview
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customers_params)
    if @customer.save
      flash[:notice] = "Customer successfully created"
      redirect_to business_customers_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @customer.update(customers_params)
      flash[:notice] = "Customer successfully edited"
      redirect_to business_customers_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def delete_customer
    @customer.destroy
    redirect_to business_customers_path
  end

  def search
    @customers = Customer.search(params[:search])
  end
  
  def delete_customer
    @customer.destroy
    redirect_to business_customers_path
  end
  
  def search
    @customer = Customer.search(params[:search])
  end

  private

  def customers_params
    params.require(:customer).permit(:fname, :lname, :email, :phone_number)
  end

  def set_cutomer
    @customer = Customer.find(params[:id])
  end
end
