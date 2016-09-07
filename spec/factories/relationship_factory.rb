FactoryGirl.define do

  factory :relationship, class: Easify::Hr::Relationship do
     name "Father"
     description "Biological father"
     start_date Time.zone.now
  end

end
