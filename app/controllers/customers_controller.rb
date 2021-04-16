class CustomersController < ApplicationController
  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(customer_params)
      redirect_to user_path
    else
      render :edit
    end
  end

  def delete_verification
  end

  def withdraw
  end

  def customer_params
    params.require(:user).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :postal_code, :address, :email, :is_active)
  end
end
