class BillSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :lease_id, :date_due, :date_issued

  has_one :user
  has_one :lease
end
