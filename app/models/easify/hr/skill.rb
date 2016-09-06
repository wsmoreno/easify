class Easify::Hr::Skill < ActiveRecord::Base
  belongs_to :human_resource, class_name: "Easify::Hr::Skill", foreign_key: "easify_hr_skill_id"
  belongs_to :type, class_name: "Easify::Hr::SkillType", foreign_key: "easify_hr_skill_type_id"
end
