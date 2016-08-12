class Easify::Hr::ContactType < ActiveRecord::Base
      has_many :contact_informations, class_name: "Easify::Hr::ContactInformation", foreign_key: "contact_type_id"
end
