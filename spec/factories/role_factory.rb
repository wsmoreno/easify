FactoryGirl.define do

  factory :role, class: Easify::Sys::Role do
     name "Administrator"
     description "User granted full system application access"
     start_date Time.zone.now
  end

end
