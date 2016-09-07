FactoryGirl.define do

  factory :contact_information, class: Easify::Hr::ContactInformation do
     number_or_address "09222655470"		
     start_date 1.year.ago
  end

end
