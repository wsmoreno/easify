require 'rails_helper'

RSpec.describe Easify::Hr::Tenureship, type: :model do
  it "belongs to Human Resource" do
     association = Easify::Hr::Tenureship.reflect_on_association(:human_resource)
     expect(association.macro).to be(:belongs_to)
  end
end
