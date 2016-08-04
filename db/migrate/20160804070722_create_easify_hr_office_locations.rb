class CreateEasifyHrOfficeLocations < ActiveRecord::Migration
  def change
    create_table :easify_hr_office_locations do |t|
      t.string :name
      t.string :address1
      t.string :address
      t.string :phone_number
      t.references :easify_hr_city, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
