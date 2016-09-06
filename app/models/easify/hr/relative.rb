class Easify::Hr::Relative < ActiveRecord::Base
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :middle_name, presence: true
  validates :birthdate, presence: true
  validates :relationship, presence: true  
  validates :gender, presence: true
  validates :address1, presence: true
  validates :city, presence: true
  validates :email_address, format: { with: VALID_EMAIL_REGEX }

  belongs_to :human_resource, class_name: "Easify::Hr::HumanResource", foreign_key: "easify_hr_human_resource_id"
  belongs_to :relationship, class_name: "Easify::Hr::Relationship", foreign_key: "easify_hr_relationship_id"
  belongs_to :city, class_name: "Easify::Hr::City", foreign_key: "easify_hr_city_id"
end
