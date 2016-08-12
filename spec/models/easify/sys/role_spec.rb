require 'rails_helper'

RSpec.describe Easify::Sys::Role, type: :model do
 
   it "has many User Roles" do  
      association = Easify::Sys::Role.reflect_on_association(:user_roles)
      expect(association.macro).to be(:has_many)
   end

   it "has many Users" do
      association = Easify::Sys::Role.reflect_on_association(:users)
      expect(association.macro).to be(:has_many)
   end
end

