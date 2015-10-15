class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.integer :user_id
      t.integer :permissions_id

      t.timestamps null: false
    end
  end
end
