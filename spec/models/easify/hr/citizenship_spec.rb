require 'rails_helper'

RSpec.describe Easify::Hr::Citizenship, type: :model do
    
    it "should have many Citizens" do
       association = Easify::Hr::Citizenship.reflect_on_association(:citizens)
       expect(association.macro).to be(:has_many)
    end

    it "should have a Country" do 
       association = Easify::Hr::Citizenship.reflect_on_association(:country)
       expect(association.macro).to be(:has_one)
    end
end
