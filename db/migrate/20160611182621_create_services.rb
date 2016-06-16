class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :address
      t.string :website
      t.string :phone_number
      t.string :name

      t.timestamps null: false
    end
  end
end
