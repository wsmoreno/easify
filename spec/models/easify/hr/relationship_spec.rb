require 'rails_helper'

RSpec.describe Easify::Hr::Relationship, type: :model do
   it "identifies many Relatives" do
      association = Easify::Hr::Relationship.reflect_on_association(:relatives)
      expect(association.macro).to be(:has_many)
   end
end
