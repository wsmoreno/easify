require 'rails_helper'

RSpec.describe Easify::Hr::ContactInformation, type: :model do
   
      it "should belong to Easify::Hr::HumanResources" do
          association = Easify::Hr::ContactInformation.reflect_on_association(:human_resource)
          expect(association.macro).to be(:belongs_to)
      end   

      it "should belong to Easify::Hr::ContactTypes" do
          association = Easify::Hr::ContactInformation.reflect_on_association(:contact_type)
          expect(association.macro).to be(:belongs_to)
      end

      it "should not allow blank number or address" do
          contact_information = build(:contact_information, number_or_address: "")
          contact_information.valid?
          expect(contact_information.errors[:number_or_address]).to include("can't be blank")          
      end

      it "should not allow blank start date" do
          contact_information = build(:contact_information, start_date: "")
          contact_information.valid?
          expect(contact_information.errors[:start_date]).to include("can't be blank")
      end

      it "should not allow missing contact type" do
          contact_information = build(:contact_information)
          contact_information.valid?
          expect(contact_information.errors[:contact_type_id]).to include("can't be blank")
      end
 
      it "should not allow missing human resource" do
          contact_information = build(:contact_information)
          contact_information.valid?
          expect(contact_information.errors[:contact_type_id]).to include("can't be blank")
      end
end
