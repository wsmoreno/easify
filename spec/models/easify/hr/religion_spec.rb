require 'rails_helper'

RSpec.describe Easify::Hr::Religion, type: :model do

   before do
      religion = build(:religion)
   end
  
   it "has many member Human Resources" do
      association = Easify::Hr::Religion.reflect_on_association(:members)
      expect(association.macro).to be(:has_many)
   end

   it "should not allow blank name" do
      religion = build(:religion, name: nil)
      religion.valid?
      expect(religion.errors[:name]).to include("can't be blank")
   end

   it "should not allow blank description" do
      religion = build(:religion, description: nil)
      religion.valid?
      expect(religion.errors[:description]).to include("can't be blank")
   end

   it "should not allow blank start date" do
      religion = build(:religion, start_date: nil)
      religion.valid?
      expect(religion.errors[:start_date]).to include("can't be blank")
   end

   it "should be valid with non-blank name" do
      religion = build(:religion)
      religion.valid?
      expect(religion.errors[:name]).not_to include("can't be blank")
   end

   it "should be valid with non-blank description" do
      religion = build(:religion)
      religion.valid?
      expect(religion.errors[:description]).not_to include("can't be blank")
   end

   it "should be valid with non-blank start date" do
      religion = build(:religion)
      religion.valid?
      expect(religion.errors[:start_date]).not_to include("can't be blank")
   end

end
