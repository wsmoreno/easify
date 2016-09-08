# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :region, :class => 'Easify::Hr::Region' do
      name         "Caraga Administrative Region"
      code         "XIII"
      island_group "Mindanao"
      start_date   2.years.ago
  end
end
