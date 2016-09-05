require 'rails_helper'

RSpec.describe Easify::Hr::Training, type: :model do
   it "belongs to a Human Resource" do
      association = Easify::Hr::Training.reflect_on_association(:human_resource)
      expect(association.macro).to be(:belongs_to)
   end

    it "should not allow blank description"
    it "should not allow blank date taken"
    it "should not allow blank venue"
    it "should be valid with non-blank description"
    it "should be valid with non-blank date taken"
    it "should be valid with non-blank venue"
end
