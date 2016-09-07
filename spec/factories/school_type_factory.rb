FactoryGirl.define do

  factory :school_type, class: Easify::Hr::SchoolType do
      name "International School"
      description "Promotes international education, in an international environment"
      start_date 1.year.ago
  end

end
