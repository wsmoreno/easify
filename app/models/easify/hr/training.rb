class Easify::Hr::Training < ActiveRecord::Base
  validates :description, presence: true, uniqueness: true 
  validates :date_taken, presence: true
  validates :venue, presence: true

  belongs_to :human_resource, class_name: "Easify::Hr::HumanResource", foreign_key: "human_resource_id"
end
