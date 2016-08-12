class Easify::Hr::Relationship < ActiveRecord::Base
    has_many :relatives, class_name: "Easify::Hr::Relatives", foreign_key: "relationship_id"
end
