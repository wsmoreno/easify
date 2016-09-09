class Easify::Hr::Province < ActiveRecord::Base
      validates :name, presence: true
      validates :iso_code, presence: true 
      validates :start_date, presence: true

      belongs_to :region, class_name: "Easify::Hr::Region", foreign_key: "easify_hr_region_id" 
      has_many   :cities, class_name: "Easify::Hr::City", foreign_key: "easify_hr_province_id"
end
