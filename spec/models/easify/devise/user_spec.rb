require 'rails_helper'

RSpec.describe Easify::Devise::User, type: :model do
  
    before do
       user = build(:user)
       user.save
    end


    it "has many User Roles" do
       association = Easify::Devise::User.reflect_on_association(:user_roles)
       expect(association.macro).to be(:has_many)
    end

    it "has many Roles" do
       association = Easify::Devise::User.reflect_on_association(:roles)
       expect(association.macro).to be(:has_many)
    end

    it "should not allow blank email" do
       user = build(:user, email: nil)
       user.valid?
       expect(user.errors[:email]).to include("can't be blank")
    end

    it "should be valid on non-blank email" do
       user = build(:user)
       user.valid?
       expect(user.errors[:email]).not_to include("can't be blank")
    end

    it "should not allow invalid emails" do
       user = build(:user, email: "8885756(((((")
       user.valid?
       expect(user.errors[:email]).to include("is invalid")
    end 

    it "should be valid on correct email format" do
       user = build(:user)
       user.valid?
       expect(user.errors[:email]).not_to include("is invalid")
    end

    it "should not allow blank password on create" do
       user = build(:user, password: nil)
       user.valid?
       expect(user.errors[:password]).to include("can't be blank")
    end

    it "should be valid on non-blank password on create" do
       user = build(:user)
       user.valid?
       expect(user.errors[:password]).not_to include("can't be blank")
    end

    it "should not allow duplicate emails" do
       user = build(:user)
       user.valid?
       expect(user.errors[:email]).to include("has already been taken")
    end

    it "should be valid on unique emails" do
       user = build(:user, email: "wilson.moreno.ph@gmail.com")
       user.valid?
       expect(user.errors[:email]).not_to include("has already been taken")
    end
end
