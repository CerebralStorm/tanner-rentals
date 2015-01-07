class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :leases
  has_many :bills

  def name
    read_attribute(:name).present? ? read_attribute(:name) : read_attribute(:email)
  end
end
