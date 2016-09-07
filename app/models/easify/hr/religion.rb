class Easify::Hr::Religion < ActiveRecord::Base
      validates :name, presence: true
      validates :description, presence: true
      validates :start_date, presence: true

      has_many :members, class_name: "Easify::Hr::HumanResource", foreign_key: "religion_id"
end
