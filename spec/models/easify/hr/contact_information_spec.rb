require 'rails_helper'

RSpec.describe Easify::Hr::ContactInformation, type: :model do
   
      it "should belong to Easify::Hr::HumanResources" do
          association = Easify::Hr::ContactInformation.reflect_on_association(:human_resource)
          expect(association.macro).to be(:belongs_to)
      end   

      it "should belong to Easify::Hr::ContactTypes" do
          association = Easify::Hr::ContactInformation.reflect_on_association(:contact_type)
          expect(association.macro).to be(:belongs_to)
      end
end
