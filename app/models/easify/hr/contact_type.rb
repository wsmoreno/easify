class Easify::Hr::ContactType < ActiveRecord::Base
      validates :name, presence: true, uniqueness: true
      validates :description, presence: true
      validates :start_date, presence: true

      has_many :contact_informations, class_name: "Easify::Hr::ContactInformation", foreign_key: "easify_hr_contact_type_id"
end
