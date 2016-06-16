class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :company
      t.string :street_address
      t.string :city
      t.string :state_abbr
      t.integer :zip_code
      t.string :url
      t.string :phone_number

      t.timestamps null: false
    end
  end
end
