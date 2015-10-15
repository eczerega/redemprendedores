class CreateMatures < ActiveRecord::Migration
  def change
    create_table :matures do |t|
      t.integer :idea_id

      t.timestamps null: false
    end
  end
end
