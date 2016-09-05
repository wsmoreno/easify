require 'rails_helper'

RSpec.describe Easify::Hr::WorkExperience, type: :model do
   it "belongs to a Human Resource" do
      association = Easify::Hr::WorkExperience.reflect_on_association(:human_resource)
      expect(association.macro).to be(:belongs_to)
   end

   it "belongs to a City" do
      association = Easify::Hr::WorkExperience.reflect_on_association(:city)
      expect(association.macro).to be(:belongs_to)
   end

   it "should not allow blank employeer name"
   it "should not allow blank address1"
   it "should not allow blank start period"
   it "should not allow blank human resource"
   it "should not allow blank city"
   it "should be valid with non-blank employeer name"
   it "should be valid with non-blank address1"
   it "should be valid with non-blank start period"
   it "should be valid with non-blank human resource"
   it "should be valid with non-blank resource"

end
