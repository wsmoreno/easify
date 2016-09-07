require 'rails_helper'

RSpec.describe Easify::Hr::School, type: :model do

  before do
     school = build(:school)
     city = build(:city)
     level = build(:school_level)
     type = build(:school_type)
     school.city = city
     school.level = level
     school.type = type
     school.save
  end

  it "belongs to a School Type" do
     association = Easify::Hr::School.reflect_on_association(:type)
     expect(association.macro).to be(:belongs_to)
  end

  it "belongs to a School Level" do
     association = Easify::Hr::School.reflect_on_association(:level)
     expect(association.macro).to be(:belongs_to)
  end

  it "belongs to a City" do
     association = Easify::Hr::School.reflect_on_association(:city)
     expect(association.macro).to be(:belongs_to)
  end


  it "should not allow blank name" do
     school = build(:school, name: nil)
     school.valid?
     expect(school.errors[:name]).to include("can't be blank")
  end

  it "should not allow blank address 1" do
     school = build(:school, address1: nil)
     school.valid?
     expect(school.errors[:address1]).to include("can't be blank")
  end

  it "should not allow blank city" do
     school = build(:school)
     school.valid?
     expect(school.errors[:city]).to include("can't be blank")
  end

  it "should not allow blank school type" do 
     school = build(:school, type: nil)
     school.valid?
     expect(school.errors[:type]).to include("can't be blank")
  end

  it "should not allow blank school level" do
     school = build(:school, level: nil)
     school.valid?
     expect(school.errors[:level]).to include("can't be blank")
  end 

  it "should not allow duplicates names" do
     school = build(:school)
     school.valid?
     expect(school.errors[:name]).to include("has already been taken")
  end


  it "should be valid with unique name" do
     school = build(:school, name: "Pamantasan ng Lungsod ng Maynila")
     school.valid?
     expect(school.errors[:name]).not_to include("has already been taken")
  end

  it "should be valid with non-blank name" do
     school = build(:school)
     school.valid?
     expect(school.errors[:name]).not_to include("can't be blank")
  end

  it "should be valid with non-blank address 1" do
     school = build(:school)
     school.valid?
     expect(school.errors[:address1]).not_to include("can't be blank")
  end

  it "should be valid with non-blank city" do
     school = build(:school)
     school.city = build(:city)
     school.valid?
     expect(school.errors[:city]).not_to include("can't be blank")
  end

  it "should be valid with non-blank school type" do
     school = build(:school)
     school.type = build(:school_type)
     school.valid?
     expect(school.errors[:type]).not_to include("can't be blank")
  end  

  it "should be valid with non-blank school level" do
     school = build(:school)
     school.level = build(:school_level)
     school.valid?
     expect(school.errors[:level]).not_to include("can't be blank")
  end

end
