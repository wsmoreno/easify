class Easify::Hr::HumanResource < ActiveRecord::Base
  mount_uploader :profile_picture, ProfilePictureUploader
  mount_uploader :resume, ResumeUploader
  validates :first_name, presence: true, uniqueness: { scope: [:middle_name, :last_name] }
  validates :middle_name, presence: true
  validates :last_name, presence: true
  validates :company, presence: true
  validates :birthdate, presence: true
  validates :citizenship, presence: true
  validates :civil_status, presence: true
  validates :gender, presence: true

  belongs_to :citizenship, class_name: "Easify::Hr::Citizenship", foreign_key: "easify_hr_citizenship_id"
  belongs_to :civil_status, class_name: "Easify::Hr::CivilStatus", foreign_key: "easify_hr_civil_status_id"
  belongs_to :city, class_name: "Easify::Hr::City", foreign_key: "easify_hr_city_id"
  belongs_to :religion, class_name: "Easify::Hr::Religion", foreign_key: "religion_id"
  belongs_to :company, class_name: "Easify::Hr::Company", foreign_key: "easify_hr_company_id"
  belongs_to :department, class_name: "Easify::Hr::Department", foreign_key: "department_id"
  belongs_to :supervisor, class_name: "Easify::Hr::HumanResource"
  has_one :office_location, class_name: "Easify::Hr::OfficeLocation", foreign_key: "office_location_id"
  belongs_to :user_account, class_name: "Easify::Devise::User", foreign_key: "devise_user_id"

  has_many :relatives, class_name: "Easify::Hr::Relatives", foreign_key: "easify_hr_human_resource_id"
  has_many :contact_informations, class_name: "Easify::Hr::ContactInformation", foreign_key: "easify_hr_human_resource_id"
  has_many :supervised_departments, class_name: "Easify::Hr::Department", foreign_key: "easify_hr_human_resource_id"  
  has_many :subordinates, class_name: "Easify::Hr::HumanResource", foreign_key: "supervisor_id"
  has_many :references, class_name: "Easify::Hr::References", foreign_key: "human_resource_id"
  has_many :educations, class_name: "Easify::Hr::Education", foreign_key: "human_resource_id"
  has_many :skills, class_name: "Easify::Hr::Skills", foreign_key: "human_resource_id"
  has_many :trainings, class_name: "Easify::Hr::Trainings", foreign_key: "human_resource_id"
  has_many :work_experiences, class_name: "Easify::Hr::WorkExperience", foreign_key: "human_resource_id"
  has_many :tenureships, class_name: "Easify::Hr::Tenureshi", foreign_key: "human_resource_id"
end
