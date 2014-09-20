class PropertySerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :city, :state, :zip, :description_header, :description

  embed :ids

  has_many :units

end
