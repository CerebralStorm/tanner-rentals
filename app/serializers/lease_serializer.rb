class LeaseSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :start_date, :end_date
end
