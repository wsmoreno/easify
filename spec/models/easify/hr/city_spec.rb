require 'rails_helper'

RSpec.describe Easify::Hr::City, type: :model do

    before do
       city = build(:city)
       city.province = build(:province)
       city.save
    end

    it "should have many employees" do
       association = Easify::Hr::City.reflect_on_association(:employees)
       expect(association.macro).to be(:has_many)
    end

    it "should have many Relatives" do
       association = Easify::Hr::City.reflect_on_association(:relatives)
       expect(association.macro).to be(:has_many)
    end

    it "should have many References" do
       association = Easify::Hr::City.reflect_on_association(:character_references)
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

    it "does not allow duplicate name" do
       city = build(:city)
       city.valid?
       expect(city.errors[:name]).to include("has already been taken")
    end

    it "returns employees of type Easify::Hr::HumanResource" do
       city = build(:city)
       expect(city.employees.proxy_association.options[:class_name]).to eq("Easify::Hr::HumanResource")
    end

    it "returns relatives of type Easify::Hr::Relative" do
       city = build(:city)
       expect(city.relatives.proxy_association.options[:class_name]).to eq("Easify::Hr::Relative")
    end
 
    it "returns references of type Easify::Hr::Reference" do
       city = build(:city)
       expect(city.character_references.proxy_association.options[:class_name]).to eq("Easify::Hr::Reference")
    end

    it "returns companies of type Easify::Hr::Company" do
       city = build(:city)
       expect(city.companies.proxy_association.options[:class_name]).to eq("Easify::Hr::Company")
    end

    it "returns schools of type Easify::Hr::School" do
       city = build(:city)
       expect(city.schools.proxy_association.options[:class_name]).to eq("Easify::Hr::School")
    end

    it "returns office locations of type Easify::Hr:OfficeLocation" do
        city = build(:city)
        expect(city.office_locations.proxy_association.options[:class_name]).to eq("Easify::Hr::OfficeLocation")
    end

    it "returns work experiences of type Easify::Hr::WorkExperience" do
       city = build(:city)
       expect(city.work_experiences.proxy_association.options[:class_name]).to eq("Easify::Hr::WorkExperience")
    end  
end
