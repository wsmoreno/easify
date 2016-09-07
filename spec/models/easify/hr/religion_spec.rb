require 'rails_helper'

RSpec.describe Easify::Hr::Religion, type: :model do

   before do
      religion = build(:religion)
   end
  
   it "has many member Human Resources" do
      association = Easify::Hr::Religion.reflect_on_association(:members)
      expect(association.macro).to be(:has_many)
   end

   it "should not allow blank name"
   it "should not allow blank description"
   it "should not allow blank start date"
   it "should be valid with non-blank name"
   it "should be valid with non-blank description"
   it "should be valid with non-blank start date"

end
