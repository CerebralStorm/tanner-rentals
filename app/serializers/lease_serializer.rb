class LeaseSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :start_date, :end_date

  has_one :user
  has_one :unit
end
