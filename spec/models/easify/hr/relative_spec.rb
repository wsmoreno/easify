require 'rails_helper'

RSpec.describe Easify::Hr::Relative, type: :model do

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

  it "should not allow blank first name"
  it "should not allow blank last name"
  it "should not allow blank middle name"
  it "should not allow blank birth date"
  it "should not allow blank relationship"
  it "should not allow blank gender"
  it "should not allow blank address 1"
  it "should not allow blank city" 
  it "should not allow invalid email address"
  it "should be valid with non-blank first name"
  it "should be valid with non-blank last name"
  it "should be valid with non-blank middle name" 
  it "should be valid with non-blank birth date"
  it "should be valid with non-blank relationship"
  it "should be valid with non-blank gender"
  it "should be valid with non-blank address 1"
  it "should be valid with non-blank city"

end

