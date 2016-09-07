FactoryGirl.define do

  factory :relative, class: Easify::Hr::Relative do
     first_name "Juan"
     last_name "Dela Cruz"
     middle_name "Santos"
     gender "Male"
     birthdate Time.zone.now
     address1 "26 Nowhere St. Progress Village"
     address2 "Ortigas Center"
     phone_number "2655488"
     mobile_number "09222758934"
     emergency_contact 1
     company_name "Robina"
     occupation "Operation Manager"
  end

end
