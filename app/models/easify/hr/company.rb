class Easify::Hr::Company < ActiveRecord::Base
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :address1, presence: true
  validates :tax_identification_number, presence: true
  validates :city, presence: true

  belongs_to :city, class_name: "Easify::Hr::City", foreign_key: "easify_hr_city_id"
  has_many :departments, class_name: "Easify::Hr::Department", foreign_key: "easify_hr_company_id"
  has_many :human_resources, class_name: "Easify::Hr::HumanResource", foreign_key: "easify_hr_company_id"
end
