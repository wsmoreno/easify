require 'rails_helper'

RSpec.describe Easify::Hr::CivilStatus, type: :model do
     it "should have many Human Resources" do
        association = Easify::Hr::CivilStatus.reflect_on_association(:human_resources)
        expect(association.macro).to be(:has_many)
     end
end
