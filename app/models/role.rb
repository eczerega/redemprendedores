class Role < ActiveRecord::Base
  belongs_to :user
  has_one :idea
  has_many :permissions
end
