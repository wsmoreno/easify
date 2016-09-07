FactoryGirl.define do

  factory :religion, class: Easify::Hr::Religion do
     name "Roman Catholic"
     description "Roman Catholic"
     start_date 1.year.ago
  end

end
