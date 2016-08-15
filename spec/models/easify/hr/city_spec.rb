require 'rails_helper'

RSpec.describe Easify::Hr::City, type: :model do

    it "should have many Human Resources" do
       association = Easify::Hr::City.reflect_on_association(:human_resources)
       expect(association.macro).to be(:has_many)
    end

    it "should have many Relatives" do
       association = Easify::Hr::City.reflect_on_association(:relatives)
       expect(association.macro).to be(:has_many)
    end

    it "should have many References" do
       association = Easify::Hr::City.reflect_on_association(:references)
       expect(association.macro).to be(:has_many)
    end

    it "should have many Companies" do
       association = Easify::Hr::City.reflect_on_association(:companies)
       expect(association.macro).to be(:has_many)
    end

    it "should have many Schools" do
       association = Easify::Hr::City.reflect_on_association(:schools)
       expect(association.macro).to be(:has_many)
    end

    it "should have many Office Locations" do
       association = Easify::Hr::City.reflect_on_association(:office_locations)
       expect(association.macro).to be(:has_many)
    end

    it "should have many Work Experiences" do
       association = Easify::Hr::City.reflect_on_association(:work_experiences)
       expect(association.macro).to be(:has_many)
    end 

    it "does not allow blank name" do
       city = build(:city, name: "")
       city.valid?
       expect(city.errors[:name]).to include("can't be blank")
    end

    it "does not allow blank start_date" do
       city = build(:city, start_date: "")
       city.valid?
       expect(city.errors[:start_date]).to include("can't be blank")
    end
end
