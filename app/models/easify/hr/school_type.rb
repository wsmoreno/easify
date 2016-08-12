class Easify::Hr::SchoolType < ActiveRecord::Base
     has_many :schools, class_name: "Easify::Hr::School", foreign_key: "school_type_id"
end
