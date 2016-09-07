require 'rails_helper'

RSpec.describe Easify::Hr::Citizenship, type: :model do
     
    before do
       citizenship = build(:citizenship)
       country = build(:country)
       citizenship.country = country
       citizenship.save
    end

    it "should have many Citizens" do
       association = Easify::Hr::Citizenship.reflect_on_association(:citizens)
       expect(association.macro).to be(:has_many)
    end

    it "should belongs to a Country" do 
       association = Easify::Hr::Citizenship.reflect_on_association(:country)
       expect(association.macro).to be(:belongs_to)
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

    it "should not allow duplicate names" do
       citizenship = build(:citizenship)
       citizenship.valid?
       expect(citizenship.errors[:name]).to include("has already been taken")
    end

    it "returns citizens of type Easify::Hr:HumanResource" do
       citizenship = build(:citizenship)
       expect(citizenship.citizens.proxy_association.options[:class_name]).to eq("Easify::Hr::HumanResource")
    end
   
    it "returns country of type Easify::Hr::Country" do
       association = Easify::Hr::Citizenship.reflect_on_association(:country)
       expect(association.options[:class_name]).to eq("Easify::Hr::Country")
    end
end
