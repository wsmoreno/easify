FactoryGirl.define do

  factory :country, class: Easify::Hr::Country do
     name "Philippines"
     code "PH"
     start_date Time.zone.now
  end

end
