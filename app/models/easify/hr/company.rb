class Easify::Hr::Company < ActiveRecord::Base
  belongs_to :city, class_name: "Easify::Hr::City", foreign_key: "city_id"
  has_many :departments, class_name: "Easify::Hr::Department", foreign_key: "company_id"
  has_many :human_resources, class_name: "Easify::Hr::HumanResource", foreign_key: "company_id"
end
