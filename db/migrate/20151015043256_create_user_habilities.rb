class CreateUserHabilities < ActiveRecord::Migration
  def change
    create_table :user_habilities do |t|
      t.integer :user_id
      t.integer :hability_id

      t.timestamps null: false
    end
  end
end
