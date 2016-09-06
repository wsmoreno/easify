class Easify::Hr::SkillType < ActiveRecord::Base
      validates :name, presence: true, uniqueness: { case_sensitive: false }
      validates :description, presence: true
      validates :start_date, presence: true

      has_many :skills, class_name: "Easify::Hr::Skill", foreign_key: "easify_hr_skill_type_id"
end
