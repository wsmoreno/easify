class Easify::Hr::Department < ActiveRecord::Base
  validates :name, presence: true

  belongs_to :company, class_name: "Easify::Hr::Company", foreign_key: "easify_hr_company_id"
  belongs_to :department_head, class_name: "Easify::Hr::HumanResource", foreign_key: "easify_hr_department_head_id"
  has_many :human_resources, class_name: "Easify::Hr::HumanResource", foreign_key: "easify_hr_human_resource_id"
end
