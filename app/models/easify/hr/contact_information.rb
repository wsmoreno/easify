class Easify::Hr::ContactInformation < ActiveRecord::Base
  validates :number_or_address, presence: true
  validates :start_date, presence: true
  validates :contact_type, presence: true
  validates :contact, presence: true

  belongs_to :contact, class_name: "Easify::Hr::HumanResource", foreign_key: "easify_hr_human_resource_id"
  belongs_to :contact_type, class_name: "Easify::Hr::ContactType", foreign_key: "easify_hr_contact_type_id"
end
