require 'rails_helper'

RSpec.describe Easify::Devise::User, type: :model do
  
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
end
