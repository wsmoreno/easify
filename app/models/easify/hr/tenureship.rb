class Easify::Hr::Tenureship < ActiveRecord::Base
     belongs_to :human_resource, class_name: "Easify::Hr::HumanResource", foreign_key: "human_resource_id"
end
