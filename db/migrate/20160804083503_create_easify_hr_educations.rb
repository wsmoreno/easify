class CreateEasifyHrEducations < ActiveRecord::Migration
  def change
    create_table :easify_hr_educations do |t|
      t.date       :attended_from
      t.date       :attended_to
      t.string     :degree
      t.text       :extra_curricular_activities
      t.decimal    :grade_average
      t.string     :rank_in_class
      t.text       :scholastic_honors
      t.string     :year_graduated
      t.integer    :created_by
      t.integer    :updated_by
      t.references :easify_hr_human_resource, index: true, foreign_key: true
      t.references :easify_hr_school, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
