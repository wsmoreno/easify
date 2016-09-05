require 'rails_helper'

RSpec.describe Easify::Hr::School, type: :model do

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


  it "should not allow blank name"
  it "should not allow blank address 1"
  it "should not allow blank city"
  it "should not allow blank school type"
  it "should not allow blank school level"
  it "should not allow duplicate names"
  it "should be valid with unique name"
  it "should be valid with non-blank name"
  it "should be valid with non-blank address 1"
  it "should be valid with non-blank city"
  it "should be valid with non-blank school type"
  it "should be valid with non-blank school level"
end
