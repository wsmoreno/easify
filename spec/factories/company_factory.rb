FactoryGirl.define do

  factory :company, class: Easify::Hr::Company do
     name "J.S. Unitrade Merchandise, Inc."
     address1 "20th Floor Marco Polo Ortigas Manila"
     address2 "Sapphire Road, Ortigas Center"
     tax_identification_number "005-148-853-000"
     start_date Time.zone.now
  end

end
