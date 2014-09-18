class UsersController < ApplicationController
  respond_to :json

  def index
    if params[:ids]
      respond_with User.where(id: params[:ids])
    else
      respond_with User.all
    end
  end

  def show
    respond_with User.find(params[:id])
  end

  def create
    user = User.new(user_params)

    if user.save
      sign_in user
      render json: user, status: :created
    else
      render json: {errors: user.errors}, status: 422
    end
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      respond_with @user
    else
      respond_with render json: @user.errors, status: :unprocessable_entity
    end
  end

private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :phone)
  end
end