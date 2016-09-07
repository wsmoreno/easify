require 'rails_helper'

RSpec.describe Easify::Hr::Country, type: :model do

     before do
        build(:country).save
     end
   

     it "should have a Citizenship" do
        association = Easify::Hr::Country.reflect_on_association(:citizenship)
        expect(association.macro).to be(:has_one)
     end

     it "should not allow blank name" do
        country = build(:country, name: "")
        country.valid?
        expect(country.errors[:name]).to include("can't be blank")
     end

     it "should not allow blank country code" do
        country = build(:country, code: "")
        country.valid?
        expect(country.errors[:code]).to include("can't be blank")
     end

     it "should not allow duplicate name" do
        country = build(:country)
        country.valid?
        expect(country.errors[:code]).to include("has already been taken") 
     end

     it "should now allow duplicate country code" do
        country = build(:country)
        country.valid?
        expect(country.errors[:code]).to include("has already been taken")
     end

     it "should be valid with name not blank" do
        country = build(:country, name: "Philippines", code: "PH")
        expect(country.errors[:name]).not_to include("can't be blank")
     end

     it "should be valid with code not blank" do
        country = build(:country, name: "Philippines", code: "PH")
        country.valid?
        expect(country.errors[:code]).not_to include("can't be blank")
     end
 
     it "should be valid with unique name" do
        country = build(:country, name: "United States of America", code: "US")
        country.valid?
        expect(country.errors[:name]).not_to include("has already been taken")
     end

     it "should be valid with unique code" do
        country = build(:country, name: "United States of America", code: "US")
        country.valid?
        expect(country.errors[:code]).not_to include("has already been taken")
     end
 end
