class Easify::Hr::CivilStatus < ActiveRecord::Base
      has_many :human_resources, class_name: "Easify::Hr::HumanResource", foreign_key: "civil_status_id"
end
