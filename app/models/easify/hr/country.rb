class Easify::Hr::Country < ActiveRecord::Base
      validates :name, presence: true, uniqueness: true
      validates :code, presence: true, uniqueness: true 

      has_one :citizenship, class_name: "Easify::Hr::Citizenship", foreign_key: "easify_hr_country_id"
end
