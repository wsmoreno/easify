class Easify::Hr::OfficeLocation < ActiveRecord::Base
  validates :name, presence: true
  validates :address1, presence: true
  validates :phone_number, presence: true
  validates :start_date, presence: true
  validates :company, presence: true

  belongs_to :company, class_name: "Easify::Hr::Company", foreign_key: "easify_hr_company_id"
  belongs_to :city, class_name: "Easify::Hr::City", foreign_key: "easify_hr_city_id"
  has_many :employees, class_name: "Easify::Hr::HumanResource", foreign_key: "easify_hr_office_location_id"
end
