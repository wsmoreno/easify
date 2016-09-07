FactoryGirl.define do

  factory :reference, class: Easify::Hr::Reference do
     first_name    "Edwin"
     middle_name   "Dela Cruz"
     last_name     "Aguilar"
     address1      "26 Tatampal St. Blk. 18-F"
     address2      "Kaunlaran Village, Dagat-Dagatan"
     email_address "edwin.aguilar.ph@gmail.com"
     mobile_number "09222655478"
     phone_number  "3734658"
  end

end
