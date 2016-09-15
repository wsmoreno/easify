class Easify::Hr::Company < ActiveRecord::Base
  validates :phone_number_primary, presence: true
  validates :name, presence: true, uniqueness: true
  validates :address1, presence: true
  validates :tax_identification_number, presence: true, uniqueness: true
  validates :city, presence: true
  validates :email_address_primary, presence: true

  belongs_to :city, class_name: "Easify::Hr::City", foreign_key: "easify_hr_city_id"
  has_many :departments, class_name: "Easify::Hr::Department", foreign_key: "easify_hr_company_id"
  has_many :employees, class_name: "Easify::Hr::HumanResource", foreign_key: "easify_hr_company_id"
end
