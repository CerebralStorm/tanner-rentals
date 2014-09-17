class PhotosController < ApplicationController
  respond_to :json

  def index
    if params[:ids]
      respond_with Photo.where(id: params[:ids])
    else
      respond_with Photo.all
    end
  end

  def show
    respond_with Photo.find(params[:id])
  end

  def create
    photo = Photo.new(photo_params)
    if photo.save
      render json: photo
    else
      render json: {errors: photo.errors.messages}, status: 422
    end
  end

  def update
    photo = Photo.find(params[:id])
    if photo.update(photo_params)
      render json: photo
    else
      render json: {errors: photo.errors.messages}, status: 422
    end
  end

  def destroy
    photo = Photo.find(params[:id]).destroy
    respond_with :no_content
  end

  private

  def photo_params
    params.require(:photo).permit(:url)
  end
end
