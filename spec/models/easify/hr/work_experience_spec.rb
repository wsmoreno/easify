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
end
