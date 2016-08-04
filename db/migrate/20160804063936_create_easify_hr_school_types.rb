class CreateEasifyHrSchoolTypes < ActiveRecord::Migration
  def change
    create_table :easify_hr_school_types do |t|
      t.string :name
      t.string :description
      t.date :start_date
      t.date :end_date

      t.timestamps null: false
    end
  end
end
