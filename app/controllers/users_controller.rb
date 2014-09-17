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
    user = User.new(params[:user])

    if user.save
      render json: user, status: :created
    else
      respond_with user
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
    params.require(:user).permit(:name, :email, :phone)
  end
end