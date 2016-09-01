class Easify::Hr::Department < ActiveRecord::Base
  validates :company, presence: true
  validates :name, presence: true
  validates :department_head, presence: true  

  belongs_to :company, class_name: "Easify::Hr::Company", foreign_key: "easify_hr_company_id"
  belongs_to :department_head, class_name: "Easify::Hr::HumanResource", foreign_key: "department_head_id"
  has_many :human_resources, class_name: "Easify::Hr::HumanResource", foreign_key: "easify_hr_human_resource_id"

end
