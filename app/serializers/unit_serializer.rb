class UnitSerializer < ActiveModel::Serializer
  attributes :id, :bedrooms, :bathrooms, :feature_photo_url, :description_header, :description, :vacancy

  has_many :photos
  has_many :leases

  def feature_photo_url
    photos.where(feature: true).first.try(:url)
  end

  def vacancy
    leases.count >= bedrooms
  end
end