class UnitsController < ApplicationController
  respond_to :json

  def index
    if params[:ids]
      respond_with Unit.where(id: params[:ids])
    else
      respond_with Unit.all
    end
  end

  def show
    respond_with Unit.find(params[:id])
  end

  def create
    unit = Unit.new(unit_params)
    if unit.save
      render json: unit
    else
      render json: {errors: unit.errors.messages}, status: 422
    end
  end

  def update
    unit = Unit.find(params[:id])
    if unit.update(unit_params)
      render json: unit
    else
      render json: {errors: unit.errors.messages}, status: 422
    end
  end

  def destroy
    unit = Unit.find(params[:id]).destroy
    respond_with :no_content
  end

  private

  def unit_params
    params.require(:unit).permit(:url)
  end
end