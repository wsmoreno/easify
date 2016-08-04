class Easify::Hr::ContactInformation < ActiveRecord::Base
  belongs_to :easify_hr_human_resource
  belongs_to :easify_hr_contact_type
end
