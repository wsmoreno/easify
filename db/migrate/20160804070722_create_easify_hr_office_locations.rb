class CreateEasifyHrOfficeLocations < ActiveRecord::Migration
  def change
    create_table :easify_hr_office_locations do |t|
      t.string :name
      t.string :address1
      t.string :address2
      t.string :phone_number
      t.date   :start_date
      t.date   :end_date
      t.references :easify_hr_city, index: true, foreign_key: true
      t.references :easify_hr_company, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
