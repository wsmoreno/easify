require 'rails_helper'

RSpec.describe Easify::Hr::Department, type: :model do

    it "should belong to a Easify::Hr::Company" do
       association = Easify::Hr::Department.reflect_on_association(:company)
       expect(association.macro).to be(:belongs_to)
    end

    it "should be supervise by Easify::Hr::HumanResource" do
       association = Easify::Hr::Department.reflect_on_association(:department_head)
       expect(association.macro).to be(:belongs_to)
    end

    it "should have many Easify::Hr::HumanResources" do
       association = Easify::Hr::Department.reflect_on_association(:human_resources)
       expect(association.macro).to be(:has_many)
    end
end
