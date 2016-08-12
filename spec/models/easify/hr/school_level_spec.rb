require 'rails_helper'

RSpec.describe Easify::Hr::SchoolLevel, type: :model do
   
   it "has many Schools" do
      association = Easify::Hr::SchoolLevel.reflect_on_association(:schools)
      expect(association.macro).to be(:has_many)
   end

end
