require 'rails_helper'

RSpec.describe Easify::Hr::Company, type: :model do
     it "should belong to a City" do
        association = Easify::Hr::Company.reflect_on_association(:city)
        expect(association.macro).to be(:belongs_to)
     end

     it "should have many Human Resources" do
        association = Easify::Hr::Company.reflect_on_association(:human_resources)
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
end
