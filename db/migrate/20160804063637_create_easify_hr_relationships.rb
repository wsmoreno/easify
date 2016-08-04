class CreateEasifyHrRelationships < ActiveRecord::Migration
  def change
    create_table :easify_hr_relationships do |t|
      t.string :name
      t.string :description
      t.date :start_date
      t.date :end_date

      t.timestamps null: false
    end
  end
end
