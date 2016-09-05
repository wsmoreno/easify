require 'rails_helper'

RSpec.describe Easify::Hr::School, type: :model do

  before do
     school = build(:school)
     city = build(:city)
     school.city = city
     school.save
  end

  it "belongs to a School Type" do
     association = Easify::Hr::School.reflect_on_association(:school_type)
     expect(association.macro).to be(:belongs_to)
  end

  it "belongs to a School Level" do
     association = Easify::Hr::School.reflect_on_association(:school_level)
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
     school = build(:school, school_type: nil)
     school.valid?
     expect(school.errors[:school_type]).to include("can't be blank")
  end

  it "should not allow blank school level" do
     school = build(:school, school_level: nil)
     school.valid?
     expect(school.errors[:school_level]).to include("can't be blank")
  end 

  it "should not allow duplicate names"
  it "should be valid with unique name"
  it "should be valid with non-blank name"
  it "should be valid with non-blank address 1"
  it "should be valid with non-blank city"
  it "should be valid with non-blank school type"
  it "should be valid with non-blank school level"
end
