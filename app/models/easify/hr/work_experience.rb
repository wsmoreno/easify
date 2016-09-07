class Easify::Hr::WorkExperience < ActiveRecord::Base
     validates :employer_name, presence: true
     validates :address1, presence: true
     validates :start_period, presence: true
     validates :human_resource, presence: true
     validates :city, presence: true

     belongs_to :human_resource, class_name: "Easify::Hr::HumanResource", foreign_key: "easify_hr_human_resource_id"
     belongs_to :city, class_name: "Easify::Hr::City", foreign_key: "easify_hr_city_id"
end
