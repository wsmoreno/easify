require 'rails_helper'

RSpec.describe Easify::Hr::ContactType, type: :model do

      before do
         build(:contact_type).save
      end 


      it "should have many Contact Informations" do
         association = Easify::Hr::ContactType.reflect_on_association(:contact_informations)
         expect(association.macro).to be(:has_many)
      end

      it "should not allow blank name" do
         contact_type = build(:contact_type, name: "")
         contact_type.valid?
         expect(contact_type.errors[:name]).to include("can't be blank")        
      end     

      it "should not allow blank start date" do
         contact_type = build(:contact_type, start_date: nil)
         contact_type.valid?
         expect(contact_type.errors[:start_date]).to include("can't be blank")
      end

      it "should not allow blank description" do
         contact_type = build(:contact_type, description: nil)
         contact_type.valid?
         expect(contact_type.errors[:description]).to include("can't be blank")
      end 

      it "should not allow duplicate names" do
         contact_type = build(:contact_type)
         contact_type.valid?
         expect(contact_type.errors[:name]).to include("has already been taken")
      end

      it "returns contact informations of type Easify::Hr::ContactInformation" do
         contact_type = build(:contact_type)
         expect(contact_type.contact_informations.proxy_association.options[:class_name]).to eq("Easify::Hr::ContactInformation")
      end
end
