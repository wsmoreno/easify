class CreateEasifyHrSkills < ActiveRecord::Migration
  def change
    create_table :easify_hr_skills do |t|
      t.string     :description
      t.string     :level
      t.string     :name
      t.integer    :created_by
      t.integer    :updated_by
      t.references :easify_hr_human_resource, index: true, foreign_key: true
     
      t.timestamps null: false
    end
  end
end
