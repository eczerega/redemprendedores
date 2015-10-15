class CreateHabilities < ActiveRecord::Migration
  def change
    create_table :habilities do |t|
      t.integer :name

      t.timestamps null: false
    end
  end
end
