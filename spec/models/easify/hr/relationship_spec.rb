require 'rails_helper'

RSpec.describe Easify::Hr::Relationship, type: :model do
   it "identifies many Relatives" do
      association = Easify::Hr::Relationship.reflect_on_association(:relatives)
      expect(association.macro).to be(:has_many)
   end

   it "returns relatives of type Easify::Hr::Relatives"
   it "should not allow blank name"
   it "should not allow duplicate name"
   it "should not allow blank description"
   it "should not allow blank start date"
   it "should be valid with unique name"
   it "should be valid with non-blank name"
   it "should be valid with non-blank description"
   it "should be valid with non-blank start date"
   
end
