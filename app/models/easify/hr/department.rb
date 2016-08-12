class Easify::Hr::Department < ActiveRecord::Base
  belongs_to :easify_hr_company
  belongs_to :department_head, class_name: "Easify::Hr::HumanResource", foreign_key: "department_head_id"
  has_many :easify_hr_human_resources
end
