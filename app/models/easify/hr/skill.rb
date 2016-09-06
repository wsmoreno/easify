class Easify::Hr::Skill < ActiveRecord::Base
  validates :name, presence: true
  validates :description, presence: true
  validates :level, presence: true
  validates :type, presence: true

  belongs_to :human_resource, class_name: "Easify::Hr::HumanResource", foreign_key: "easify_hr_skill_id"
  belongs_to :type, class_name: "Easify::Hr::SkillType", foreign_key: "easify_hr_skill_type_id"
end
