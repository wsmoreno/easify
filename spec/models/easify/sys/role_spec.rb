require 'rails_helper'

RSpec.describe Easify::Sys::Role, type: :model do
 
   before do
      build(:role).save
   end

   it "has many User Roles" do  
      association = Easify::Sys::Role.reflect_on_association(:user_roles)
      expect(association.macro).to be(:has_many)
   end

   it "has many Users" do
      association = Easify::Sys::Role.reflect_on_association(:users)
      expect(association.macro).to be(:has_many)
   end

   it "should not allow blank name" do
      role = build(:role, name: "")
      role.valid?
      expect(role.errors[:name]).to include("can't be blank")
   end

   it "should not allow duplicate name" do
      role = build(:role)
      role.valid?
      expect(role.errors[:name]).to include("has already been taken")
   end

   it "should not allow blank description" do
      role = build(:role, description: "")
      role.valid?
      expect(role.errors[:description]).to include("can't be blank")
   end
end

