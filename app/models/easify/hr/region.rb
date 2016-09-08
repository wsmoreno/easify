class Easify::Hr::Region < ActiveRecord::Base
    validates :name, presence: true
    validates :island_group, presence: true
    validates :start_date, presence: true

    belongs_to :country, class_name: "Easify::Hr::Country", foreign_key: "easify_hr_country_id"
    has_many   :provinces, class_name: "Easify::Hr::Province", foreign_key: "easify_hr_region_id"
end
