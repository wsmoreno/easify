class Easify::Hr::HumanResource < ActiveRecord::Base
  belongs_to :easify_hr_citizenship
  belongs_to :easify_hr_city
  belongs_to :easify_hr_civil_status
  belongs_to :easify_hr_company
  belongs_to :easify_hr_department
  belongs_to :easify_hr_office_location
  belongs_to :easify_hr_religion
  belongs_to :easify_sys_user
end
