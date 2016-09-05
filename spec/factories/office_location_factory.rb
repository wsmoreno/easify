FactoryGirl.define do

  factory :office_location, class: Easify::Hr::OfficeLocation do
      name "Main Office"
      address1 "20th Floor Marco Polo"
      address2 "Ortigas Manila, Sapphire Road, Ortigas Center"
      phone_number "916-1111"
      start_date 1.year.ago
  end

end
