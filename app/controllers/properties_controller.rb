class PropertiesController < ApplicationController
  respond_to :json

  def index
    if params[:ids]
      respond_with Property.where(id: params[:ids])
    else
      respond_with Property.all
    end
  end

  def show
    respond_with Property.find(params[:id])
  end
end
