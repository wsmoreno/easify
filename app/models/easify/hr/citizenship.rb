class Easify::Hr::Citizenship < ActiveRecord::Base
  has_one :country, class_name: "Easify::Hr::Country", foreign_key: "country_id"
  has_many :citizens, class_name: "Easify::Hr::HumanResource", foreign_key: "citizenship_id"
end
