class Easify::Hr::City < ActiveRecord::Base
      has_many :human_resources, class_name: "Easify::Hr::HumanResource", foreign_key: "city_id"
      has_many :relatives, class_name: "Easify::Hr::Relative", foreign_key: "city_id" 
      has_many :references, class_name: "Easify::Hr::References", foreign_key: "city_id"           
      has_many :companies, class_name: "Easify::Hr::Company", foreign_key: "city_id"
      has_many :schools, class_name: "Easify::Hr::School", foreign_key: "city_id"
      has_many :office_locations, class_name: "Easify::Hr:OfficeLocations", foreign_key: "city_id"
      has_many :work_experiences, class_name: "Easify::Hr::WorkExperience", foreign_key: "city_id"
end
