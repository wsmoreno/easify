FactoryGirl.define do

  factory :civil_status, class: Easify::Hr::CivilStatus do
     name "Single"
     description "Not currently and previously married"
     start_date 1.year.ago
  end

end
