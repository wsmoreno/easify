require 'rails_helper'

RSpec.describe Easify::Hr::OfficeLocation, type: :model do
   
   it "is located at a City" do
      association = Easify::Hr::OfficeLocation.reflect_on_association(:city)
      expect(association.macro).to be(:belongs_to)
   end

   it "has many Human Resources" do
      association = Easify::Hr::OfficeLocation.reflect_on_association(:human_resources)
      expect(association.macro).to be(:has_many)
   end

   it "should not allow blank name"
   it "should not allow blank company"
   it "should not allow address 1"
   it "should not allow blank phone number"
   it "should not allow blank start date"
   it "should be valid with non-blank name"
   it "should be valid with non-blank company"
   it "should be valid with non-blank address 1"
   it "should be valid with non-blank phone number"
   it "should be valid with non-blank start date"
end
