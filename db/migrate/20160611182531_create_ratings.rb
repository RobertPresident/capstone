class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :user_id
      t.integer :service_id
      t.integer :score

      t.timestamps null: false
    end
  end
end
