class AddMissingFiledsToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :idea_id, :integer
  end
end
