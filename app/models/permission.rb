class Permission < ActiveRecord::Base
  belongs_to :user
  belongs_to :idea
  belongs_to :role
end
