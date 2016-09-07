FactoryGirl.define do

  factory :training, class: Easify::Hr::Training do
     description "Advance Java Programming"
     date_taken 1.year.ago
     rating "90%"
     venue "Ortigas Manila"
  end

end
