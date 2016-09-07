FactoryGirl.define do

  factory :city, class: Easify::Hr::City do
     name "Caloocan"
     start_date Time.zone.now
  end

end
