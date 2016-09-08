class CreateEasifyHrSchools < ActiveRecord::Migration
  def change
    create_table :easify_hr_schools do |t|
      t.string     :name
      t.string     :address1
      t.string     :address2
      t.integer    :created_by
      t.integer    :updated_by
      t.references :easify_hr_city, index: true, foreign_key: true
      t.references :easify_hr_school_level, index: true, foreign_key: true
      t.references :easify_hr_school_type, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
