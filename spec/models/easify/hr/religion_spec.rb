require 'rails_helper'

RSpec.describe Easify::Hr::Religion, type: :model do
  
   it "has many member Human Resources" do
      association = Easify::Hr::Religion.reflect_on_association(:members)
      expect(association.macro).to be(:has_many)
   end

end
