class Easify::Hr::OfficeLocation < ActiveRecord::Base
  belongs_to :city, class_name: "Easify::Hr::City", foreign_key: "easify_hr_city_id"
  has_many :human_resources, class_name: "Easify::Hr::HumanResource", foreign_key: "easify_hr_office_location_id"
end
