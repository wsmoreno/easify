require 'rails_helper'

RSpec.describe Easify::Hr::Training, type: :model do
   
    before do
        training = build(:training)
        training.save
    end

    it "belongs to a Human Resource" do
       association = Easify::Hr::Training.reflect_on_association(:human_resource)
       expect(association.macro).to be(:belongs_to)
    end

    it "should not allow blank description" do
        training = build(:training, description: nil)
        training.valid?
        expect(training.errors[:description]).to include("can't be blank")
    end
    
    it "should not allow duplicate description" do
        training = build(:training)
        training.valid?
        expect(training.errors[:description]).to include("has already been taken") 
    end
   
    
    it "should not allow blank date taken" do
        training = build(:training, date_taken: nil)
        training.valid?
        expect(training.errors[:date_taken]).to include("can't be blank")
    end

    it "should not allow blank venue" do
        training = build(:training, venue: nil)
        training.valid?
        expect(training.errors[:venue]).to include("can't be blank")
    end

    it "should be valid with unique description" do
        training = build(:training, description: "Ruby on Rails Programming")
        training.valid?
        expect(training.errors[:description]).not_to include("has already been taken")
    end

    it "should be valid with non-blank description" do
        training = build(:training)
        training.valid?
        expect(training.errors[:description]).not_to include("can't be blank")
    end 

    it "should be valid with non-blank date taken" do
        training = build(:training)
        training.valid?
        expect(training.errors[:date_taken]).not_to include("can't be blank")
    end
 
    it "should be valid with non-blank venue" do
        training = build(:training)
        training.valid?
        expect(training.errors[:venue]).not_to include("can't be blank")
    end
end
