class UsersController < ApplicationController
  before_action :load_user, only: :show

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      flash[:success] = t ".sign_up_succ"
      redirect_to @user
    else
      render :new
    end
  end

  def show; end

  private

  def load_user
    @user = User.find_by id: params[:id]
    return if @user
    flash[:danger] = t "users.load_user.error_message"
    redirect_to root_path
  end

  def user_params
    params.require(:user).permit :name, :email, :phone, :password,
      :password_confirmation
  end
end