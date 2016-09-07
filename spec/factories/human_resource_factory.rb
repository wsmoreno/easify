FactoryGirl.define do

  factory :human_resource, class: Easify::Hr::HumanResource do
       first_name   "Wilson"
       middle_name  "Sablayan"
       last_name    "Moreno"
       address1     "25 Tulya St. Blk. 11-G Phase III-C"
       address2     "Kaunlaran Village, Dagat-dagatan"
       gender       "Male"
       birthdate    34.years.ago
  end

end
