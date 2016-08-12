require 'rails_helper'

RSpec.describe Easify::Hr::SchoolType, type: :model do
  
   it "has many Schools" do
      association = Easify::Hr::SchoolType.reflect_on_association(:schools)
      expect(association.macro).to be(:has_many)
   end

end
