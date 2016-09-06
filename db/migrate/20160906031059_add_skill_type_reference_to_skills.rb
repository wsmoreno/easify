class AddSkillTypeReferenceToSkills < ActiveRecord::Migration
  def change
      add_column :easify_hr_skills, :easify_hr_skill_type_id, :integer
      add_foreign_key :easify_hr_skills, :easify_hr_skill_types, name:"skill_connect_to_types", column: "easify_hr_skill_type_id", primary_key: "id"
  end
end
