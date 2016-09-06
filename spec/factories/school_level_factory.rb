FactoryGirl.define do

  factory :school_level, class: Easify::Hr::SchoolLevel do
      name "Tertiary"
      description "Universtiy/College - Undergraduate Level"
      start_date 1.year.ago
  end

end
