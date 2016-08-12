class Easify::Hr::Country < ActiveRecord::Base
      has_one :citizenship, class_name: "Easify::Hr::Citizenship", foreign_key: "country_id"
end
