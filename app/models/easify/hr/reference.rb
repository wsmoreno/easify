class Easify::Hr::Reference < ActiveRecord::Base
  belongs_to :human_resource, class_name: "Easify::Hr::HumanResource", foreign_key: "human_resource_id"
  belongs_to :city, class_name: "Easify::Hr::City", foreign_key: "city_id"
end
