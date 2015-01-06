class Lease < ActiveRecord::Base
  belongs_to :user
  belongs_to :unit

  has_many :bills

  delegate :owner, to: :unit
end
