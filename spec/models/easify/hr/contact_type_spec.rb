require 'rails_helper'

RSpec.describe Easify::Hr::ContactType, type: :model do

      it "should have many Contact Informations" do
         association = Easify::Hr::ContactType.reflect_on_association(:contact_informations)
         expect(association.macro).to be(:has_many)
      end

end
