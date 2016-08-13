class Easify::Hr::Country < ActiveRecord::Base
      has_one :citizenship, class_name: "Easify::Hr::Citizenship", foreign_key: "easify_hr_country_id"
end
