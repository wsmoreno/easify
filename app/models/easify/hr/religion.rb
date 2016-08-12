class Easify::Hr::Religion < ActiveRecord::Base
      has_many :members, class_name: "Easify::Hr::HumanResource", foreign_key: "religion_id"
end
