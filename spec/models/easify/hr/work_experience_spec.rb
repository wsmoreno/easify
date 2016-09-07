require 'rails_helper'

RSpec.describe Easify::Hr::WorkExperience, type: :model do

   before do
      work_experience = build(:work_experience)
   end
 

   it "belongs to a Human Resource" do
      association = Easify::Hr::WorkExperience.reflect_on_association(:human_resource)
      expect(association.macro).to be(:belongs_to)
   end

   it "belongs to a City" do
      association = Easify::Hr::WorkExperience.reflect_on_association(:city)
      expect(association.macro).to be(:belongs_to)
   end

   it "should not allow blank employer name" do
      experience = build(:work_experience, employer_name: nil)
      experience.valid?
      expect(experience.errors[:employer_name]).to include("can't be blank")
   end

   it "should not allow blank address1" do
      experience = build(:work_experience, address1: nil)
      experience.valid?
      expect(experience.errors[:address1]).to include("can't be blank")
   end

   it "should not allow blank start period" do
      experience = build(:work_experience, start_period: nil)
      experience.valid?
      expect(experience.errors[:start_period]).to include("can't be blank")
   end

   it "should not allow blank human resource" do
      experience = build(:work_experience, human_resource: nil)
      experience.valid?
      expect(experience.errors[:human_resource]).to include("can't be blank")
   end

   it "should not allow blank city" do
      experience = build(:work_experience, city: nil)
      experience.valid?
      expect(experience.errors[:city]).to include("can't be blank")
   end
  
   it "should be valid with non-blank employer name" do
      experience = build(:work_experience)
      experience.valid?
      expect(experience.errors[:employer_name]).not_to include("can't be blank")
   end

   it "should be valid with non-blank address1" do
      experience = build(:work_experience)
      experience.valid?
      expect(experience.errors[:address1]).not_to include("can't be blank")
   end

   it "should be valid with non-blank start period" do
      experience = build(:work_experience)
      experience.valid?
      expect(experience.errors[:start_period]).not_to include("can't be blank")
   end

   it "should be valid with non-blank human resource" do
      experience = build(:work_experience)
      experience.valid?
      expect(experience.errors[:human_resourece]).not_to include("can't be blank")
   end

   it "should be valid with non-blank city" do
      experience = build(:work_experience)
      experience.city = build(:city)
      experience.valid?
      expect(experience.errors[:city]).not_to include("can't be blank")
   end

end
