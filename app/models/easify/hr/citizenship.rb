class Easify::Hr::Citizenship < ActiveRecord::Base
  # TODO create data seeds for Citizenship
  # TODO validate foreign keys in association

  validates :name, presence: true, uniqueness: true
  validates :country, presence: true
  validates :start_date, presence: true

  has_one :country, class_name: "Easify::Hr::Country", foreign_key: "easify_hr_country_id"
  has_many :citizens, class_name: "Easify::Hr::HumanResource", foreign_key: "easify_hr_citizenship_id"
end
