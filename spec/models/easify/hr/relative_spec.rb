require 'rails_helper'

RSpec.describe Easify::Hr::Relative, type: :model do

  before do
    relative = build(:relative)
    relationship = build(:relationship)
    city = build(:city)
    relative.relationship = relationship
    relative.city = city
    relative.save
  end

  it "belongs to a Human Resource" do
     association = Easify::Hr::Relative.reflect_on_association(:human_resource)
     expect(association.macro).to be(:belongs_to)
  end

  it "belongs to a Relationship" do
     association = Easify::Hr::Relative.reflect_on_association(:relationship)
     expect(association.macro).to be(:belongs_to)
  end

  it "belongs to City" do
     association = Easify::Hr::Relative.reflect_on_association(:city)
     expect(association.macro).to be(:belongs_to)
  end

  it "should not allow blank first name" do
     relative = build(:relative, first_name: nil)
     relative.valid?
     expect(relative.errors[:first_name]).to include("can't be blank")
  end

  it "should not allow blank last name" do
     relative = build(:relative, last_name: nil)
     relative.valid?
     expect(relative.errors[:last_name]).to include("can't be blank")
  end

  it "should not allow blank middle name" do
     relative = build(:relative, middle_name: nil)
     relative.valid?
     expect(relative.errors[:middle_name]).to include("can't be blank")
  end

  it "should not allow blank birth date" do
     relative = build(:relative, birthdate: nil)
     relative.valid?
     expect(relative.errors[:birthdate]).to include("can't be blank")
  end
 
  it "should not allow blank relationship" do
     relative = build(:relative, relationship: nil)
     relative.valid?
     expect(relative.errors[:relationship]).to include("can't be blank")
  end

  it "should not allow blank gender" do
     relative = build(:relative, gender: nil)
     relative.valid?
     expect(relative.errors[:gender]).to include("can't be blank")
  end

  it "should not allow blank address 1" do
     relative = build(:relative, address1: nil)
     relative.valid?
     expect(relative.errors[:address1]).to include("can't be blank")
  end


  it "should not allow blank city" do
     relative = build(:relative, city: nil)
     relative.valid?
     expect(relative.errors[:city]).to include("can't be blank")
  end
 
  it "should not allow invalid email address" do
    relative = build(:relative, email_address: "asdfqweg;asdf")
    relative.valid?
    expect(relative.errors[:email_address]).to include("is invalid")
  end
  
  it "should be valid with non-blank first name" do
    relative = build(:relative)
    relative.valid?
    expect(relative.errors[:first_name]).not_to include("can't be blank")
  end

  it "should be valid with non-blank last name" do
     relative = build(:relative)
     relative.valid?
     expect(relative.errors[:last_name]).not_to include("can't be blank")
  end

  it "should be valid with non-blank middle name" do
     relative = build(:relative)
     relative.valid?
     expect(relative.errors[:middle_name]).not_to include("can't be blank")
  end
  
  it "should be valid with non-blank birth date" do
     relative = build(:relative)
     relative.valid?
     expect(relative.errors[:birthdate]).not_to include("can't be blank")
  end

  it "should be valid with non-blank relationship" do
     relative = build(:relative)
     relative.relationship = build(:relationship)
     relative.valid?
     expect(relative.errors[:relationship]).not_to include("can't be blank")
  end

  it "should be valid with non-blank gender" do
     relative = build(:relative)
     relative.valid?
     expect(relative.errors[:gender]).not_to include("can't be blank")
  end

  it "should be valid with non-blank address 1" do
     relative = build(:relative)
     relative.valid?
     expect(relative.errors[:address1]).not_to include("can't be blank")
  end

  it "should be valid with non-blank city" do
     relative = build(:relative)
     relative.city = build(:city)
     relative.valid?
     expect(relative.errors[:city]).not_to include("can't be blank")
  end

end

