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

end
