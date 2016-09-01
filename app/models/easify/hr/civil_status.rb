class Easify::Hr::CivilStatus < ActiveRecord::Base
      # TODO add uniqueness validation for name attribute
      # TODO add method to proper caps name before saving
      # TODO add database table unique constraint for name column

      validates :name, presence: true, uniqueness: true
      validates :description, presence: true
      validates :start_date, presence: true

      has_many :human_resources, class_name: "Easify::Hr::HumanResource", foreign_key: "easify_hr_civil_status_id"
end
