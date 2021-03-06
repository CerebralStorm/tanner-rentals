class Property < ActiveRecord::Base
  belongs_to :owner, class_name: "User", foreign_key: :user_id

  has_many :units
end
