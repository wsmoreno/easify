require 'rails_helper'

RSpec.describe Easify::Sys::UserRole, type: :model do
 
    it "belongs to a User" do
       association = Easify::Sys::UserRole.reflect_on_association(:user)
       expect(association.macro).to be(:belongs_to)
    end  

    it "belongs to a Role" do
       association = Easify::Sys::UserRole.reflect_on_association(:role)
       expect(association.macro).to be(:belongs_to)
    end
end
