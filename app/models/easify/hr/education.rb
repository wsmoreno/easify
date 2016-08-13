class Easify::Hr::Education < ActiveRecord::Base
  belongs_to :human_resource, class_name: "Easify::Hr::HumanResource", foreign_key: "easify_hr_human_resource_id"
  belongs_to :school, class_name: "Easify::Hr::School", foreign_key: "easify_hr_school"
end
