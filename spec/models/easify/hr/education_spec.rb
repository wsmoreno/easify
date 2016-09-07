require 'rails_helper'

RSpec.describe Easify::Hr::Education, type: :model do
  it "should belong to Easify::Hr::School" do 
     association = Easify::Hr::Education.reflect_on_association(:school)
     expect(association.macro).to be(:belongs_to)
  end

  it "should belong to Easify::Hr::Education" do
     association = Easify::Hr::Education.reflect_on_association(:human_resource)
     expect(association.macro).to be(:belongs_to)
  end
end
