require 'rails_helper'

RSpec.describe Easify::Hr::Tenureship, type: :model do
  it "belongs to Human Resource" do
     association = Easify::Hr::Tenureship.reflect_on_association(:human_resource)
     expect(association.macro).to be(:belongs_to)
  end

  it "should not allow blank date hired"
  it "should not allow position"
  it "should be valid with non-blank date hired"
  it "should be valid with non-blank position"
end
