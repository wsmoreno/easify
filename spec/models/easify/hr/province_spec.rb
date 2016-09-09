require 'rails_helper'

RSpec.describe Easify::Hr::Province, type: :model do

    before do
       country = build(:country)
       region = build(:region)
       province = build(:province)
       region.country = country
       region.save
       province.region = region
    end

    it "should have many cities" do
       association = Easify::Hr::Province.reflect_on_association(:cities)
       expect(association.macro).to be(:has_many)
    end

    it "should belong to a region" do
       association = Easify::Hr::Province.reflect_on_association(:region)
       expect(association.macro).to be(:belongs_to)
    end

    it "should return cities of type Easify::Hr::City" do
       association = Easify::Hr::Province.reflect_on_association(:cities)
       expect(association.options[:class_name]).to eq("Easify::Hr::City")
    end

    it "should return region of type Easify::Hr::Region" do
       association = Easify::Hr::Province.reflect_on_association(:region)
       expect(association.options[:class_name]).to eq("Easify::Hr::Region")
    end

    it "should not allow blank name" do
       province = build(:province, name: nil)
       province.valid?
       expect(province.errors[:name]).to include("can't be blank")
    end
   
    it "should not allow blank iso code" do
       province = build(:province, iso_code: nil)
       province.valid?
       expect(province.errors[:iso_code]).to include("can't be blank")
    end

    it "should not allow start date" do
       province = build(:province, start_date: nil)
       province.valid?
       expect(province.errors[:start_date]).to include("can't be blank")
    end

    it "should be valid with non-blank name" do
       province = build(:province)
       province.valid?
       expect(province.errors[:name]).not_to include("can't be blank")
    end

    it "should be valid with non-blank iso code" do
       province = build(:province)
       province.valid?
       expect(province.errors[:iso_code]).not_to include("can't be blank")
    end
   
    it "should be valid with non-blank start date" do
       province = build(:province)
       province.valid?
       expect(province.errors[:start_date]).not_to include("can't be blank")
    end

end
