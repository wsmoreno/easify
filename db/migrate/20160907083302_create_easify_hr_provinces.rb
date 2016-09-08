class CreateEasifyHrProvinces < ActiveRecord::Migration
  def change
    create_table :easify_hr_provinces do |t|
      t.string     :name
      t.string     :iso_code
      t.date       :start_date
      t.date       :end_date
      t.integer    :created_by
      t.integer    :updated_by

      t.timestamps null: false
    end

  end
end
