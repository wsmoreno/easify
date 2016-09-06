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

  it "should return human resource of type Easify::Hr::HumanResource" do
     association = Easify::Hr::Skill.reflect_on_association(:human_resource)
     expect(association.options[:class_name]).to eq("Easify::Hr::HumanResource")
  end

  it "should not allow blank description" do
     skill = build(:skill, description: nil)
     skill.valid?
     expect(skill.errors[:description]).to include("can't be blank")     
  end

  it "should not allow blank level" do
     skill = build(:skill, level: nil)
     skill.valid?
     expect(skill.errors[:level]).to include("can't be blank") 
  end 

  it "should not allow blank name" do
     skill = build(:skill, name: nil)
     skill.valid?
     expect(skill.errors[:name]).to include("can't be blank")
  end

  it "should not allow blank skill type" do
     skill = build(:skill, type: nil)
     skill.valid?
     expect(skill.errors[:type]).to include("can't be blank")
  end

  it "should be valid with non-blank description" do
     skill = build(:skill)
     skill.valid?
     expect(skill.errors[:description]).not_to include("can't be blank")
  end

  it "should be valid with non-blank level" do
     skill = build(:skill)
     skill.valid?
     expect(skill.errors[:level]).not_to include("can't be blank")
  end

  it "should be valid with non-blank name" do
     skill = build(:skill)
     skill.valid?
     expect(skill.errors[:name]).not_to include("can't be blank")
  end

  it "should be valid with non-blank skill type" do
     skill = build(:skill)
     skill.type = build(:skill_type)
     skill.valid?
     expect(skill.errors[:type]).not_to include("can't be blank")
  end

end
