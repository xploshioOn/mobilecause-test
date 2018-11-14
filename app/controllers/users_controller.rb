class UsersController < ApplicationController

  def new
    @user = User.new
  end

  # sign up the user
  def create
    @user = User.new(user_params)
    if @user.save
      UserMailer.account_activation(@user).deliver_now
      redirect_to  notes_path, notice: "Please check your email to activate your account."
    else
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end

end
