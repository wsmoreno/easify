require 'rails_helper'

RSpec.describe Easify::Hr::Region, type: :model do
  
    it "should belong to a country"
    it "should have many provinces"
    it "should return a country of type Easify::Hr::Country"
    it "should return provinces of type Easify::Province"
    it "should not allow blank name"
    it "should not allow blank island group"
    it "should not allow blank start date"
    it "should be valid with non-blank name"
    it "should be valid with non-blank island group"
    it "should be valid with non-blank start date"  

end
