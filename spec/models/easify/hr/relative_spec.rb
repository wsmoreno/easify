require 'rails_helper'

RSpec.describe Easify::Hr::Relative, type: :model do

  it "belongs to a Human Resource" do
     association = Easify::Hr::Relative.reflect_on_association(:human_resource)
     expect(association.macro).to be(:belongs_to)
  end

  it "belongs to a Relationship" do
     association = Easify::Hr::Relative.reflect_on_association(:relationship)
     expect(association.macro).to be(:belongs_to)
  end

  it "belongs to City" do
     association = Easify::Hr::Relative.reflect_on_association(:city)
     expect(association.macro).to be(:belongs_to)
  end
end
