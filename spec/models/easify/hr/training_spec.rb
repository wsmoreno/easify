require 'rails_helper'

RSpec.describe Easify::Hr::Training, type: :model do
   it "belongs to a Human Resource" do
      association = Easify::Hr::Training.reflect_on_association(:human_resource)
      expect(association.macro).to be(:belongs_to)
   end
end
