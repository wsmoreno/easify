require 'rails_helper'

RSpec.describe Easify::Hr::School, type: :model do

  it "belongs to a School Type" do
     association = Easify::Hr::School.reflect_on_association(:school_type)
     expect(association.macro).to be(:belongs_to)
  end

  it "belongs to a School Level" do
     association = Easify::Hr::School.reflect_on_association(:school_level)
     expect(association.macro).to be(:belongs_to)
  end

  it "belongs to a City" do
     association = Easify::Hr::School.reflect_on_association(:city)
     expect(association.macro).to be(:belongs_to)
  end
end
