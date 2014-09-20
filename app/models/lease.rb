class Lease < ActiveRecord::Base
  belongs_to :user
  belongs_to :unit

  has_many :bills
end
