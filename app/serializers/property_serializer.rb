class PropertySerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :city, :state, :zip

  embed :ids

  has_many :photos
end
