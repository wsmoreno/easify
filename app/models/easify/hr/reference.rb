class Easify::Hr::Reference < ActiveRecord::Base
  belongs_to :easify_hr_human_resource
  belongs_to :easify_hr_city
end
