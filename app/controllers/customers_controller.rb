class CustomersController < ApplicationController
  def new
  @customer = Customer.new
  end

  def create
  Customer.create(customer_params)
  end

private
  # ストロングパラメータ
  def user_params
    paramas.requie(:customer).permit(:email, :last_name, :first_name, :last_name_kana, :first_name_kana, :postal_code, :address, :telephone_number)
  end
end
