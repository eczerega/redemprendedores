class CreatePostulations < ActiveRecord::Migration
  def change
    create_table :postulations do |t|
      t.integer :user_id
      t.integer :idea_id

      t.timestamps null: false
    end
  end
end
