FactoryGirl.define do

  factory :department, class: Easify::Hr::Department do
     name "Accounting"
     start_date Time.zone.now
  end

end
