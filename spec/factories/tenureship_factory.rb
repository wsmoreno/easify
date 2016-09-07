FactoryGirl.define do

  factory :tenureship, class: Easify::Hr::Tenureship do
        date_dischare   1.year.ago
        date_hired      5.years.ago
        job_description "Manages the IT Department"
        level           "Junior Manager"
        position        "IT Manager"
  end

end
