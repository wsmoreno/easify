FactoryGirl.define do
   factory :citizenship, class: Easify::Hr::Citizenship do
      name "Filipino"
      start_date Time.zone.now
   end
end
