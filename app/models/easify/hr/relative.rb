class Easify::Hr::Relative < ActiveRecord::Base
  belongs_to :human_resource, class_name: "Easify::Hr::HumanResource", foreign_key: "human_resource_id"
  belongs_to :relationship, class_name: "Easify::Hr::Relationship", foreign_key: "relationship_id"
  belongs_to :city, class_name: "Easify::Hr::City", foreign_key: "city_id"
end
