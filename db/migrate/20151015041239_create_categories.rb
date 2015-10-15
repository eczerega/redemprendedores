class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.integer :idea_id
      t.integer :recomendation_id

      t.timestamps null: false
    end
  end
end
