class Easify::Hr::Relationship < ActiveRecord::Base
    validates :name, presence: true, uniqueness: true
    validates :description, presence: true
    validates :start_date, presence: true

    has_many :relatives, class_name: "Easify::Hr::Relatives", foreign_key: "relationship_id"
end
