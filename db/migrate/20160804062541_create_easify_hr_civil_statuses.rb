class CreateEasifyHrCivilStatuses < ActiveRecord::Migration
  def change
    create_table :easify_hr_civil_statuses do |t|
      t.string  :name
      t.string  :description
      t.date    :start_date
      t.date    :end_date
      t.integer :created_by
      t.integer :updated_by 

      t.timestamps null: false
    end
  end
end
