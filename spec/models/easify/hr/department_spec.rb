require 'rails_helper'

RSpec.describe Easify::Hr::Department, type: :model do

    before do
       @department = build(:department)
       @department.company = build(:company, city: build(:city))
       @department.department_head = build(:human_resource)
       @department.save
    end   


    it "should belong to a Easify::Hr::Company" do
       association = Easify::Hr::Department.reflect_on_association(:company)
       expect(association.macro).to be(:belongs_to)
    end

    it "should be supervise by Easify::Hr::HumanResource" do
       association = Easify::Hr::Department.reflect_on_association(:department_head)
       expect(association.macro).to be(:belongs_to)
    end

    it "should have many Easify::Hr::HumanResources" do
       association = Easify::Hr::Department.reflect_on_association(:staff)
       expect(association.macro).to be(:has_many)
    end

    it "should not allow duplicate names within the same company" do
       department = build(:department)
       department.company = @department.company
       department.valid?
       expect(department.errors[:name]).to include("has already been taken")
    end

    it "should allow duplicate names with different company" do
       department = build(:department)
       department.company = build(:company, name: "Xin Tian Ti", tax_identification_number: "999898383909", city: build(:city))
       department.valid?
       expect(department.errors[:name]).not_to include("has already been taken")
    end

    it "should allow unique names within a company" do
       department = build(:department, name: "Accounting Department")
       department.company = @department.company
       department.valid?
       expect(department.errors[:name]).not_to include("has already been taken")
    end 

    it "should not allow blank name" do
       department = build(:department, name: "")
       department.valid?
       expect(department.errors[:name]).to include("can't be blank")       
    end


    it "should not allow missing department head" do
       department = build(:department, department_head: nil)
       department.valid?
       expect(department.errors[:department_head]).to include("can't be blank")
    end

    it "should not allow missing company" do
       department = build(:department, company: nil)
       department.valid?
       expect(department.errors[:company]).to include("can't be blank")
    end

    it "returns staff of type Easify::Hr::HumanResource" do
       department = build(:department)
       expect(department.staff.proxy_association.options[:class_name]).to eq("Easify::Hr::HumanResource")
    end

    it "returns department head of type Easify::Hr::HumanResource" do
       association = Easify::Hr::Department.reflect_on_association(:department_head)
       expect(association.options[:class_name]).to eq("Easify::Hr::HumanResource")
    end
end
