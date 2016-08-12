class Easify::Hr::School < ActiveRecord::Base
  belongs_to :city, class_name: "Easify::Hr::City", foreign_key: "city_id"
  belongs_to :school_level, class_name: "Easify::Hr::SchoolLevel", foreign_key: "school_level_id"
  belongs_to :school_type, class_name: "Easify::Hr::SchoolType", foreign_key: "school_type_id"
end
