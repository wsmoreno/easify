require 'rails_helper'

RSpec.describe Easify::Hr::HumanResource, type: :model do

     it "should have a Citizenship" do
        association = Easify::Hr::HumanResource.reflect_on_association(:citizenship)
        expect(association.macro).to be(:has_one)
     end

     it "should have a Civil Status" do
        association = Easify::Hr::HumanResource.reflect_on_association(:civil_status)
        expect(association.macro).to be(:has_one)
     end

     it "could live in a City" do
        association = Easify::Hr::HumanResource.reflect_on_association(:city)
        expect(association.macro).to be(:belongs_to)
     end

     it "is a member of a Religion" do
        association = Easify::Hr::HumanResource.reflect_on_association(:religion)
        expect(association.macro).to be(:belongs_to)
     end 

     it "is employed by a Company" do
        association = Easify::Hr::HumanResource.reflect_on_association(:company)
        expect(association.macro).to be(:belongs_to)
     end

     it "belongs to a Department" do
        association = Easify::Hr::HumanResource.reflect_on_association(:department)
        expect(association.macro).to be(:belongs_to)
     end

     it "is supervise by a Human Resource" do
        association = Easify::Hr::HumanResource.reflect_on_association(:supervisor)
        expect(association.macro).to be(:belongs_to)
     end

     it "is located on a Office Location" do
        association = Easify::Hr::HumanResource.reflect_on_association(:office_location)
        expect(association.macro).to be(:has_one)
     end

     it "has a User Account" do
        association = Easify::Hr::HumanResource.reflect_on_association(:user_account)
        expect(association.macro).to be(:has_one)
     end

     it "has many Relatives" do
        association = Easify::Hr::HumanResource.reflect_on_association(:relatives)
        expect(association.macro).to be(:has_many)
     end

     it "can be contacted through many Contact Information" do
        association = Easify::Hr::HumanResource.reflect_on_association(:contact_informations)
        expect(association.macro).to be(:has_many)
     end

     it "supervises many Departments" do
        association = Easify::Hr::HumanResource.reflect_on_association(:supervised_departments)
        expect(association.macro).to be(:has_many)
     end

     it "supervises many Human Resources" do
        association = Easify::Hr::HumanResource.reflect_on_association(:subordinates)
        expect(association.macro).to be(:has_many)
     end 

     it "has many References" do
        association = Easify::Hr::HumanResource.reflect_on_association(:references)
        expect(association.macro).to be(:has_many)
     end

     it "has attained many Educations" do
        association = Easify::Hr::HumanResource.reflect_on_association(:educations)
        expect(association.macro).to be(:has_many)
     end

     it "acquired many Skills" do
        association = Easify::Hr::HumanResource.reflect_on_association(:skills)
        expect(association.macro).to be(:has_many)
     end

     it "has undergone many Trainings" do
        association = Easify::Hr::HumanResource.reflect_on_association(:trainings)
        expect(association.macro).to be(:has_many)
     end

     it "has many Work Experiences" do
        association = Easify::Hr::HumanResource.reflect_on_association(:work_experiences)
        expect(association.macro).to be(:has_many)
     end 

     it "has many Tenureships" do
        association = Easify::Hr::HumanResource.reflect_on_association(:tenureships)
        expect(association.macro).to be(:has_many)
     end
end
