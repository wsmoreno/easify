# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do

  factory :province, :class => 'Easify::Hr::Province' do
        name "Bulacan"
        iso_code "PH-BUL"
        start_date 2.years.ago
  end

end
