class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :url

  belongs_to :unit
end
