require 'rails_helper'

RSpec.describe Easify::Hr::SkillType, type: :model do

   before do
       skill_type = build(:skill_type)
       skill_type.save
   end

   it "should return skills with type Easify::Hr::Skill" do
       skill_type = build(:skill_type)
       expect(skill_type.skills.proxy_association.options[:class_name]).to eq("Easify::Hr::Skill")
   end

   it "should not allow blank name" do
       skill_type = build(:skill_type, name: nil)
       skill_type.valid?
       expect(skill_type.errors[:name]).to include("can't be blank")
   end

   it "should not allow duplicate names" do
       skill_type = build(:skill_type)
       skill_type.valid?
       expect(skill_type.errors[:name]).to include("has already been taken")
   end

   it "should not allow blank description" do
       skill_type = build(:skill_type, description: nil)
       skill_type.valid?
       expect(skill_type.errors[:description]).to include("can't be blank")
   end

   it "should be case-insensitive for name duplicates" do
       skill_type = build(:skill_type)
       skill_type.name = skill_type.name.downcase
       skill_type.valid?
       expect(skill_type.errors[:name]).to include("has already been taken")
   end

   it "should not allow blank start date" do
       skill_type = build(:skill_type, start_date: nil)
       skill_type.valid?
       expect(skill_type.errors[:start_date]).to include("can't be blank")
   end
 
   it "should be valid with non-blank name" do
       skill_type = build(:skill_type)
       skill_type.valid?
       expect(skill_type.errors[:name]).not_to include("can't be blank")
   end

   it "should be valid with unique names" do
      skill_type = build(:skill_type, name: "Computer Presentation")
      skill_type.valid?
      expect(skill_type.errors[:name]).not_to include("has already been taken")
   end

   it "should be valid with non-blank description" do
      skill_type = build(:skill_type)
      skill_type.valid?
      expect(skill_type.errors[:description]).not_to include("can't be blank")
   end
   
   it "should be valid with non-blank start date" do
       skill_type = build(:skill_type)
       skill_type.valid?
       expect(skill_type.errors[:start_date]).not_to include("can't be blank")
   end

end
