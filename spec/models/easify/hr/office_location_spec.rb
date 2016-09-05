require 'rails_helper'

RSpec.describe Easify::Hr::OfficeLocation, type: :model do

   before do
      company = build(:company)
      city = build(:city)
      office_location = build(:office_location)
      city.save
      company.city = city
      office_location.company = company
      office_location.city = city
      office_location.save
   end
   
   it "is located at a City" do
      association = Easify::Hr::OfficeLocation.reflect_on_association(:city)
      expect(association.macro).to be(:belongs_to)
   end

   it "belongs to a company" do
      association = Easify::Hr::OfficeLocation.reflect_on_association(:company)
      expect(association.macro).to be(:belongs_to)
   end

   it "has many Human Resources" do
      association = Easify::Hr::OfficeLocation.reflect_on_association(:employees)
      expect(association.macro).to be(:has_many)
   end

   it "should not allow blank name" do
      office_location = build(:office_location, name: nil)
      office_location.valid?
      expect(office_location.errors[:name]).to include("can't be blank")
   end

   it "should not allow blank company" do
      office_location = build(:office_location, company: nil)
      office_location.valid?
      expect(office_location.errors[:company]).to include("can't be blank")
   end

   it "should not allow address 1" do
      office_location = build(:office_location, address1: nil)
      office_location.valid?
      expect(office_location.errors[:address1]).to include("can't be blank")
   end

   it "should not allow blank phone number" do
      office_location = build(:office_location, phone_number: nil)
      office_location.valid?
      expect(office_location.errors[:phone_number]).to include("can't be blank")
   end

   it "should not allow blank start date" do
      office_location = build(:office_location, phone_number: nil)
      office_location.valid?
      expect(office_location.errors[:start_date]).to include("can't be blank")
   end

   it "should be valid with non-blank name" do
      office_location = build(:office_location)
      office_location.valid?
      expect(office_location.errors[:office_location]).not_to include("can't be blank")
   end
   it "should be valid with non-blank company"
   it "should be valid with non-blank address 1"
   it "should be valid with non-blank phone number"
   it "should be valid with non-blank start date"
end
