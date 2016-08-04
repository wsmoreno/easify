class Easify::Hr::Relative < ActiveRecord::Base
  belongs_to :easify_hr_human_resource
  belongs_to :easify_hr_relationship
  belongs_to :easify_hr_city
end
