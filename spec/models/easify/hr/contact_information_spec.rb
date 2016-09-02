require 'rails_helper'

RSpec.describe Easify::Hr::ContactInformation, type: :model do
   
      it "should belong to a contact" do
          association = Easify::Hr::ContactInformation.reflect_on_association(:contact)
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
          expect(contact_information.errors[:contact_type]).to include("can't be blank")
      end
 
      it "should not allow missing contact" do
          contact_information = build(:contact_information)
          contact_information.valid?
          expect(contact_information.errors[:contact]).to include("can't be blank")
      end

      it "returns contact of type Easify::Hr::HumanResource" do
          association = Easify::Hr::ContactInformation.reflect_on_association(:contact)
          expect(association.options[:class_name]).to eq("Easify::Hr::HumanResource")
      end
end
