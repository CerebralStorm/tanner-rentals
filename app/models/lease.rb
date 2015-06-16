class Lease < ActiveRecord::Base
  belongs_to :user
  belongs_to :unit

  has_many :bills

  delegate :owner, to: :unit

  validates :status, inclusion: { in: %w(pending active canceled fulfilled) }
  validates :rent, numericality: { greater_than: 0 }

  def self.active
    where(status: 'active')
  end
end
