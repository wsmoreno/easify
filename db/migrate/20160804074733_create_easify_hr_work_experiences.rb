class CreateEasifyHrWorkExperiences < ActiveRecord::Migration
  def change
    create_table :easify_hr_work_experiences do |t|
      t.string :address1
      t.string :address2
      t.text :awards
      t.string :employer_name
      t.date :end_period
      t.decimal :ending_salary
      t.string :last_position
      t.text :reason_for_leaving
      t.text :recognitions
      t.date :start_period
      t.decimal :starting_salary
      t.references :easify_hr_city, index: true, foreign_key: true
      t.references :easify_hr_human_resource, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
