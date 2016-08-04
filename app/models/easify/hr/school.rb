class Easify::Hr::School < ActiveRecord::Base
  belongs_to :easify_hr_city
  belongs_to :easify_hr_school_level
  belongs_to :easify_hr_school_type
end
