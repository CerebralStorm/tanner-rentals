class UnitSerializer < ActiveModel::Serializer
  attributes :id, :feature_photo_url, :description_header, :description

  embed :ids

  has_many :photos

  def feature_photo_url
    photos.where(feature: true).first.try(:url)
  end
end