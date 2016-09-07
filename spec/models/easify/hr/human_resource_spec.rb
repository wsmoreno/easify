require 'rails_helper'

RSpec.describe Easify::Hr::HumanResource, type: :model do

     before do
        hr = build(:human_resource)
        hr.city = build(:city, name: "Caloocan")
        hr.company = build(:company)
        hr.civil_status = build(:civil_status)
        hr.user_account = build(:user)
        hr.citizenship = build(:citizenship)
        hr.save
     end

     it "should have a Citizenship" do
        association = Easify::Hr::HumanResource.reflect_on_association(:citizenship)
        expect(association.macro).to be(:belongs_to)
     end

     it "should have a Civil Status" do
        association = Easify::Hr::HumanResource.reflect_on_association(:civil_status)
        expect(association.macro).to be(:belongs_to)
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
        expect(association.macro).to be(:belongs_to)
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


     it "should not allow full name duplicates" do
        hr = build(:human_resource)
        hr.valid?
        expect(hr.errors[:first_name]).to include("has already been taken")
     end

     it "should be valid with same first name but different last name" do
        hr = build(:human_resource, last_name: "Santiago")
        hr.valid?
        expect(hr.errors[:first_name]).not_to include("has already been taken")
     end

     it "should be valid with same first name but different middle name" do
        hr = build(:human_resource, middle_name: "Dimalanta")
        hr.valid?
        expect(hr.errors[:first_name]).not_to include("has already been taken")
     end

     it "should be valid with a unique name" do
        hr = build(:human_resource, first_name: "Armando", middle_name: "Delo Santos", last_name: "Estrada")
        hr.valid?
        expect(hr.errors[:first_name]).not_to include("has already been taken")
     end

     it "should not allow blank first name" do
        hr = build(:human_resource, first_name: nil)
        hr.valid?
        expect(hr.errors[:first_name]).to include("can't be blank")
     end

     it "should not allow blank middle name" do
        hr = build(:human_resource, middle_name: nil)
        hr.valid?
        expect(hr.errors[:middle_name]).to include("can't be blank")
     end

     it "should not allow blank last name" do
        hr = build(:human_resource, last_name: nil)
        hr.valid?
        expect(hr.errors[:last_name]).to include("can't be blank")
     end

     it "should not allow blank company" do
        hr = build(:human_resource, company: nil)
        hr.valid?
        expect(hr.errors[:company]).to include("can't be blank")
     end

     it "should not allow blank birthdate" do
        hr = build(:human_resource, birthdate: nil)
        hr.valid?
        expect(hr.errors[:birthdate]).to include("can't be blank")
     end

     it "should not allow blank citizenship" do
        hr = build(:human_resource, citizenship: nil)
        hr.valid?
        expect(hr.errors[:citizenship]).to include("can't be blank")
     end 

     it "should not allow blank civil status" do
        hr = build(:human_resource, civil_status: nil)
        hr.valid?
        expect(hr.errors[:civil_status]).to include("can't be blank")
     end 

     it "should not allow blank gender" do
        hr = build(:human_resource, gender: nil)
        hr.valid?
        expect(hr.errors[:gender]).to include("can't be blank")
     end

     it "should be valid with non-blank first name" do
        hr = build(:human_resource)
        hr.valid?
        expect(hr.errors[:first_name]).not_to include("can't be blank")
     end

     it "should be valid with non-blank middle name" do
        hr = build(:human_resource)
        hr.valid?
        expect(hr.errors[:middle_name]).not_to include("can't be blank")
     end

     it "should be valid with non-blank last name" do
        hr = build(:human_resource)
        hr.valid?
        expect(hr.errors[:last_name]).not_to include("can't be blank")
     end

     it "should be valid with non-blank company" do
        hr = build(:human_resource)
        hr.company = build(:company)
        hr.valid?
        expect(hr.errors[:company]).not_to include("can't be blank")
     end

     it "should be valid with non-blank birthdate" do
        hr = build(:human_resource)
        hr.valid?
        expect(hr.errors[:birthdate]).not_to include("can't be blank")
     end

     it "should be valid with non-blank citizenship" do
        hr = build(:human_resource)
        hr.citizenship = build(:citizenship)
        hr.valid?
        expect(hr.errors[:citizenship]).not_to include("can't be blank")
     end

     it "should be valid with non-blank civil status" do
        hr = build(:human_resource)
        hr.civil_status = build(:civil_status)
        hr.valid?
        expect(hr.errors[:civil_status]).not_to include("can't be blank")
     end
 
     it "should be valid with non-blank gender" do
        hr = build(:human_resource)
        hr.valid?
        expect(hr.errors[:gender]).not_to include("can't be blank")
     end
end
