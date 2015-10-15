class Idea < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_one :role
  has_many :permissions

end
