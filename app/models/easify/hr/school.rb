class Easify::Hr::School < ActiveRecord::Base
  validates :address1, presence: true
  validates :city, presence: true
  validates :level, presence: true
  validates :type, presence: true
  validates :name, presence: true, uniqueness: true

  belongs_to :city, class_name: "Easify::Hr::City", foreign_key: "easify_hr_city_id"
  belongs_to :level, class_name: "Easify::Hr::SchoolLevel", foreign_key: "easify_hr_school_level_id"
  belongs_to :type, class_name: "Easify::Hr::SchoolType", foreign_key: "easify_hr_school_type_id"
end
