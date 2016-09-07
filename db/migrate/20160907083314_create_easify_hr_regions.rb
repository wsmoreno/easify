class CreateEasifyHrRegions < ActiveRecord::Migration
  def change
    create_table :easify_hr_regions do |t|
      t.string     :name
      t.string     :island_group
      t.date       :start_date
      t.date       :end_date
      t.references :easify_hr_country, index: true, foreign_key: true
    
      t.timestamps null: false
    end

  end
end
