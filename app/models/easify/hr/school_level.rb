class Easify::Hr::SchoolLevel < ActiveRecord::Base
      has_many :schools, class_name: "Easify::Hr::School", foreign_key: "school_level_id"
end
