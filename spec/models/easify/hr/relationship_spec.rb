require 'rails_helper'

RSpec.describe Easify::Hr::Relationship, type: :model do

   before do
      relationship = build(:relationship)
      relationship.save
   end

   it "identifies many Relatives" do
      association = Easify::Hr::Relationship.reflect_on_association(:relatives)
      expect(association.macro).to be(:has_many)
   end

   it "returns relatives of type Easify::Hr::Relatives"
   
   it "should not allow blank name" do
      relationship = build(:relationship, name: nil)
      relationship.valid?
      expect(relationship.errors[:name]).to include("can't be blank")
   end

   it "should not allow duplicate name" do
      relationship = build(:relationship)
      relationship.valid?
      expect(relationship.errors[:name]).to include("has already been taken")
   end

   it "should not allow blank description" do
      relationship = build(:relationship, description: nil)
      relationship.valid?
      expect(relationship.errors[:description]).to include("can't be blank")
   end  

   it "should not allow blank start date" do
      relationship = build(:relationship, start_date: nil)
      relationship.valid?
      expect(relationship.errors[:start_date]).to include("can't be blank")
   end

   it "should be valid with unique name" do
      relationship = build(:relationship, name: "Mother")
      relationship.valid?
      expect(relationship.errors[:name]).not_to include("has already been taken")
   end

   it "should be valid with non-blank name" do
      relationship = build(:relationship)
      relationship.valid?
      expect(relationship.errors[:name]).not_to include("can't be blank")
   end

   it "should be valid with non-blank description" do
      relationship = build(:relationship)
      relationship.valid?
      expect(relationship.errors[:description]).not_to include("can't be blank")
   end

   it "should be valid with non-blank start date" do
      relationship = build(:relationship)
      relationship.valid?
      expect(relationship.errors[:start_date]).not_to include("can't be blank")
   end
end
