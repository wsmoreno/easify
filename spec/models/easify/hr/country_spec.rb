require 'rails_helper'

RSpec.describe Easify::Hr::Country, type: :model do

     it "should have a Citizenship" do
        association = Easify::Hr::Country.reflect_on_association(:citizenship)
        expect(association.macro).to be(:has_one)
     end

end
