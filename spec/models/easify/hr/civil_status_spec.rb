require 'rails_helper'

RSpec.describe Easify::Hr::CivilStatus, type: :model do
     it "should have many Human Resources" do
        association = Easify::Hr::CivilStatus.reflect_on_association(:human_resources)
        expect(association.macro).to be(:has_many)
     end

     it "should not allow blank names" do
        civil_status = build(:civil_status, name: "")
        civil_status.valid?
        expect(civil_status.errors[:name]).to include("can't be blank")
     end

     it "should not allow blank description" do
        civil_status = build(:civil_status, description: "")
        civil_status.valid?
        expect(civil_status.errors[:description]).to include("can't be blank")
     end

     it "should not allow blank start date" do
        civil_status = build(:civil_status, start_date: "")
        civil_status.valid?
        expect(civil_status.errors[:start_date]).to include("can't be blank")
     end
end
