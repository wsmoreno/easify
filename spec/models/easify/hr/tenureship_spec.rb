require 'rails_helper'

RSpec.describe Easify::Hr::Tenureship, type: :model do

  before do
     @tenureship = build(:tenureship)
     @tenureship.human_resource = build(:human_resource)
     @tenureship.save
  end 

  it "belongs to Human Resource" do
     association = Easify::Hr::Tenureship.reflect_on_association(:human_resource)
     expect(association.macro).to be(:belongs_to)
  end

  it "should not allow blank date hired" do
     tenureship = build(:tenureship, date_hired: nil)
     tenureship.valid?
     expect(tenureship.errors[:date_hired]).to include("can't be blank")
  end

  it "should not allow duplicate hire date within the same human resource" do
     tenureship = build(:tenureship)
     tenureship.date_hired = @tenureship.date_hired
     tenureship.valid?
     expect(tenureship.errors[:date_hired]).to include("has already been taken")
  end

  it "should not allow blank position" do
     tenureship = build(:tenureship, position: nil)
     tenureship.valid?
     expect(tenureship.errors[:position]).to include("can't be blank")
  end

  it "should be valid with non-blank date hired" do
     tenureship = build(:tenureship)
     tenureship.valid?
     expect(tenureship.errors[:date_hired]).not_to include("can't be blank")
  end


  it "should be valid with non-blank position" do
     tenureship = build(:tenureship)
     tenureship.valid?
     expect(tenureship.errors[:position]).not_to include("can't be blank")
  end

end
