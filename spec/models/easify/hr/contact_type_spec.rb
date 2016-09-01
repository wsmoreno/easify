require 'rails_helper'

RSpec.describe Easify::Hr::ContactType, type: :model do

      it "should have many Contact Informations" do
         association = Easify::Hr::ContactType.reflect_on_association(:contact_informations)
         expect(association.macro).to be(:has_many)
      end

      it "should not allow blank name"
      it "should not allow blank start date"
      it "should not allow blank description"
      it "should not allow duplicate names"
      it "returns contact informations of type Easify::Hr::ContactInformation"
end
