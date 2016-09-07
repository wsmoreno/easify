class Easify::Hr::Tenureship < ActiveRecord::Base
     validates :date_hired, presence: true, uniqueness: { scope: :human_resource }
     validates :position, presence: true

     belongs_to :human_resource, class_name: "Easify::Hr::HumanResource", foreign_key: "easify_hr_human_resource_id"
end
