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
end