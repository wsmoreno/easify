FactoryGirl.define do

  factory :contact_type, class: Easify::Hr::ContactType do
     name "Email"
     description "Email address contact information type"
     start_date Time.zone.now
  end

end
