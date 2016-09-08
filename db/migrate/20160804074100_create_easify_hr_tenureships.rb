class CreateEasifyHrTenureships < ActiveRecord::Migration
  def change
    create_table :easify_hr_tenureships do |t|
      t.date       :date_discharge
      t.date       :date_hired
      t.string     :position
      t.string     :job_description
      t.string     :level
      t.integer    :created_by
      t.integer    :updated_by
      t.references :easify_hr_human_resource, index:true, foreign_key:true

      t.timestamps null: false
    end
  end
end
