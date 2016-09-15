require 'rails_helper'

RSpec.describe Easify::Hr::Company, type: :model do
     
     before do
        @company = build(:company)
        @company.city = build(:city, name: "Pasig")
        @company.save
     end

     it "should belong to a City" do
        association = Easify::Hr::Company.reflect_on_association(:city)
        expect(association.macro).to be(:belongs_to)
     end

     it "should have many employees" do
        association = Easify::Hr::Company.reflect_on_association(:employees)
        expect(association.macro).to be(:has_many)
     end

     it "should have many Departments" do
        association = Easify::Hr::Company.reflect_on_association(:departments)
        expect(association.macro).to be(:has_many)
     end

     it "should not allow blank name" do
        company = build(:company, name: "")
        company.valid?
        expect(company.errors[:name]).to include("can't be blank")
     end

     it "should not allow blank address1" do
        company = build(:company, address1: "")
        company.valid?
        expect(company.errors[:address1]).to include("can't be blank")
     end

     it "should not allow blank tax identification address" do
        company = build(:company, tax_identification_number: "")
        company.valid?
        expect(company.errors[:tax_identification_number]).to include("can't be blank")
     end

     it "should not allow blank city" do
        company = build(:company)
        company.valid?
        expect(company.errors[:city]).to include("can't be blank")
     end

     it "should not allow duplicate name" do
        company = build(:company)
        company.valid?
        expect(company.errors[:name]).to include("has already been taken")
     end

     it "should not allow duplicate tin number" do
        company = build(:company)
        company.valid?
        expect(company.errors[:tax_identification_number]).to include("has already been taken")
     end

     it "returns city of type Easify::Hr::City" do
        association = Easify::Hr::Company.reflect_on_association(:city)
        expect(association.options[:class_name]).to eq("Easify::Hr::City")
     end

     it "returns employees of type Easify::Hr::HumanResource" do
        company = build(:company)
        expect(company.employees.proxy_association.options[:class_name]).to eq("Easify::Hr::HumanResource")
     end

     it "returns departments of type Easify::Hr::Department" do
        company = build(:company)
        expect(company.departments.proxy_association.options[:class_name]).to eq("Easify::Hr::Department")
     end

     it "should be valid with name provided" do
        company = build(:company)
        company.valid?
        expect(company.errors[:name]).not_to include("can't be blank")
     end

     it "should be valid with unique name" do
        company = build(:company, name: "Xin Tian Ti")
        company.valid?
        expect(company.errors[:name]).not_to include("has already been taken")
     end

     it "should be valid with address1 provided" do
        company = build(:company)
        company.valid?
        expect(company.errors[:address1]).not_to include("can't be blank")
     end

     it "should be valid with tax identification number provided" do
        company = build(:company)
        company.valid?
        expect(company.errors[:tax_identification_number]).not_to include("can't be blank")
     end
 
     it "should be valid with city provided" do
        @company.valid?
        expect(@company.errors[:city]).not_to include("can't be blank")
     end

     it "should be valid with start date provided" do
        @company.valid?
        expect(@company.errors[:start_date]).not_to include("can't be blank")
     end 

     it "should not allow blank primary email address" do
        company = build(:company, email_address_primary: nil)
        company.valid?
        expect(company.errors[:email_address_primary]).to include("can't be blank")
     end

     it "should not allow blank primary phone number" do
        company = build(:company, phone_number_primary: nil)
        company.valid?
        expect(company.errors[:phone_number_primary]).to include("can't be blank")
     end
     it "should be valid with non-blank primary email address" do
	company = build(:company)
        company.valid?
        expect(company.errors[:email_address_primary]).not_to include("can't be blank")
     end

     it "should be valid with non-blank primary phone number" do
         company = build(:company)
         company.valid?
         expect(company.errors[:phone_number_primary]).not_to include("can't be blank")
     end     
end
