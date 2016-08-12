class Easify::Hr::Skill < ActiveRecord::Base
  belongs_to :human_resource, class_name: "Easify::Hr::Skill", foreign_key: "skill_id"
end
