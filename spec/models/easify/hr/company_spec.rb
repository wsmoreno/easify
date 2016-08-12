require 'rails_helper'

RSpec.describe Easify::Hr::Company, type: :model do
     it "should belong to a City" do
        association = Easify::Hr::Company.reflect_on_association(:city)
        expect(association.macro).to be(:belongs_to)
     end

     it "should have many Human Resources" do
        association = Easify::Hr::Company.reflect_on_association(:human_resources)
        expect(association.macro).to be(:has_many)
     end

     it "should have many Departments" do
        association = Easify::Hr::Company.reflect_on_association(:departments)
        expect(association.macro).to be(:has_many)
     end
end
