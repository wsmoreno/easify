class CreateEasifyHrTrainings < ActiveRecord::Migration
  def change
    create_table :easify_hr_trainings do |t|
      t.date       :date_taken
      t.string     :description
      t.string     :rating
      t.string     :venue
      t.integer    :created_by
      t.integer    :updated_by
      t.references :easify_hr_human_resource, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
