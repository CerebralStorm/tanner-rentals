class Unit < ActiveRecord::Base
  belongs_to :property

  has_many :photos
  has_many :leases

  delegate :owner, to: :property
end
