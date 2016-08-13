class Easify::Hr::CivilStatus < ActiveRecord::Base
      has_many :human_resources, class_name: "Easify::Hr::HumanResource", foreign_key: "easify_hr_civil_status_id"
end
