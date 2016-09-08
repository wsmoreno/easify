require 'rails_helper'

RSpec.describe Easify::Hr::Region, type: :model do
   
    before do
       region = build(:region)
       region.country = build(:country)
       region.save
    end
    
    it "should belong to a country" do
       association = Easify::Hr::Region.reflect_on_association(:country)
       expect(association.macro).to be(:belongs_to)
    end

    it "should have many provinces" do
       association = Easify::Hr::Region.reflect_on_association(:provinces)
       expect(association.macro).to be(:has_many)
    end

    it "should return a country of type Easify::Hr::Country"
    it "should return provinces of type Easify::Province"
  
    it "should not allow blank name" do
       region = build(:region, name: nil)
       region.valid?
       expect(region.errors[:name]).to include("can't be blank")
    end


    it "should not allow blank island group" do
       region = build(:region, island_group: nil)
       region.valid?
       expect(region.errors[:island_group]).to include("can't be blank")
    end 

    it "should not allow blank start date" do
       region = build(:region, start_date: nil)
       region.valid?
       expect(region.errors[:start_date]).to include("can't be blank")
    end

    it "should be valid with non-blank name" do
       region = build(:region)
       region.valid?
       expect(region.errors[:name]).not_to include("can't be blank")
    end

    it "should be valid with non-blank island group" do
       region = build(:region)
       region.valid?
       expect(region.errors[:island_group]).not_to include("can't be blank")
    end

    it "should be valid with non-blank start date" do
       region = build(:region)
       region.valid?
       expect(region.errors[:start_date]).not_to include("can't be blank")
    end 

end
