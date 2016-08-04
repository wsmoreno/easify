class Easify::Hr::Education < ActiveRecord::Base
  belongs_to :easify_hr_human_resource
  belongs_to :easify_hr_school
end
