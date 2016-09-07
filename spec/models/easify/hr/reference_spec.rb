require 'rails_helper'

RSpec.describe Easify::Hr::Reference, type: :model do
    
   it "can be a character reference for Human Resource" do
      association = Easify::Hr::Reference.reflect_on_association(:human_resource)
      expect(association.macro).to be(:belongs_to)
   end

   it "resides in a City" do
      association = Easify::Hr::Reference.reflect_on_association(:city)
      expect(association.macro).to be(:belongs_to)
   end

end
