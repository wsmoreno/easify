class CreateEasifyHrDepartments < ActiveRecord::Migration
  def change
    create_table :easify_hr_departments do |t|
      t.string     :name
      t.date       :start_date
      t.date       :end_date
      t.integer    :department_head_id
      t.integer    :created_by
      t.integer    :updated_by
      t.references :easify_hr_company, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
