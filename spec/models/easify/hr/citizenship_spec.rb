require 'rails_helper'

RSpec.describe Easify::Hr::Citizenship, type: :model do
     
    before do
       @citizenship = build(:citizenship)
    end

    it "should have many Citizens" do
       association = Easify::Hr::Citizenship.reflect_on_association(:citizens)
       expect(association.macro).to be(:has_many)
    end

    it "should have a Country" do 
       association = Easify::Hr::Citizenship.reflect_on_association(:country)
       expect(association.macro).to be(:has_one)
    end

    it "should not allow blank name" do
       citizenship = build(:citizenship, name: "")
       citizenship.valid?
       expect(citizenship.errors[:name]).to include("can't be blank")
    end

    it "should not allow blank country" do
       citizenship = build(:citizenship)
       citizenship.valid?
       expect(citizenship.errors[:country]).to include("can't be blank")
    end

    it "should not allow blank start date" do
       citizenship = build(:citizenship, start_date: "")
       citizenship.valid?
       expect(citizenship.errors[:start_date]).to include("can't be blank")
    end

    it "should not allow duplicate names"
    it "returns human resources of type Easify::Hr:HumanResource"
    it "returns country of type Easify::Hr::Country"
end
