class PropertySerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :city, :state, :zip, :feature_photo_url, :description_header, :description

  embed :ids

  def feature_photo_url
    photos.where(feature: true).first.try(:url)
  end
end
