class Easify::Hr::School < ActiveRecord::Base
  validates :name, presence: true
  validates :address1, presence: true
  validates :city, presence: true
  validates :school_level, presence: true
  validates :school_type, presence: true

  belongs_to :city, class_name: "Easify::Hr::City", foreign_key: "easify_hr_city_id"
  belongs_to :school_level, class_name: "Easify::Hr::SchoolLevel", foreign_key: "easify_hr_school_level_id"
  belongs_to :school_type, class_name: "Easify::Hr::SchoolType", foreign_key: "easify_hr_school_type_id"
end
