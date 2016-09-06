require 'rails_helper'

RSpec.describe Easify::Hr::Skill, type: :model do
 
   before do
      skill = build(:skill)
      skill.type = build(:skill_type)
   end


   it "belongs to a Human Resource" do
     association = Easify::Hr::Skill.reflect_on_association(:human_resource)
     expect(association.macro).to be(:belongs_to)
  end

  it "should return human resource of type Easify::Hr::HumanResource"

  it "should not allow blank description" do
     skill = build(:skill, description: nil)
     skill.valid?
     expect(skill.errors[:description]).to include("can't be blank")     
  end

  it "should not allow blank level"
  it "should not allow blank name"
  it "should not allow blank skill type"
  it "should be valid with non-blank description"
  it "should be valid with non-blank level"
  it "should be valid with non-blank name"
  it "should be valid with non-blank skill type"
end
