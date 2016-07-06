class AddZipCodeToServices < ActiveRecord::Migration
  def change
    add_column :services, :zip_code, :integer
  end
end
