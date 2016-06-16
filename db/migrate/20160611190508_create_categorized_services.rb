class CreateCategorizedServices < ActiveRecord::Migration
  def change
    create_table :categorized_services do |t|
      t.integer :service_id
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
