class Easify::Hr::City < ActiveRecord::Base
      # TODO create province model and create association

      validates :name, presence: true, uniqueness: true
      validates :start_date, presence: true

      has_many :employees, class_name: "Easify::Hr::HumanResource", foreign_key: "easify_hr_city_id"
      has_many :relatives, class_name: "Easify::Hr::Relative", foreign_key: "easify_hr_city_id"
      has_many :character_references, class_name: "Easify::Hr::Reference", foreign_key: "easify_hr_city_id"           
      has_many :companies, class_name: "Easify::Hr::Company", foreign_key: "easify_hr_city_id"
      has_many :schools, class_name: "Easify::Hr::School", foreign_key: "easify_hr_city_id"
      has_many :work_experiences, class_name: "Easify::Hr::WorkExperience", foreign_key: "easify_hr_city_id"
      has_many :office_locations, class_name: "Easify::Hr::OfficeLocation", foreign_key: "easify_hr_city_id"
end
