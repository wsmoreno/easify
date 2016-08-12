require 'rails_helper'

RSpec.describe Easify::Hr::Skill, type: :model do
  it "belongs to a Human Resource" do
     association = Easify::Hr::Skill.reflect_on_association(:human_resource)
     expect(association.macro).to be(:belongs_to)
  end
end
