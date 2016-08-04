class AddForeignKeyToEasifyHrDepartment < ActiveRecord::Migration
  def change
      add_foreign_key :easify_hr_departments, :easify_hr_human_resources, column: :department_head_id, primary_key: "id" 
  end
end
