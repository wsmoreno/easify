require 'rails_helper'

RSpec.describe Easify::Hr::Province, type: :model do


    it "should have many cities"
    it "should belong to a region"
    it "should return cities of type Easify::Hr::City"
    it "should return region of type Easify::Hr::Region"
    it "should not allow blank name"
    it "should not allow blank iso code"
    it "should not allow start date"
    it "should be valid with non-blank name"
    it "should be valid with non-blank iso code"
    it "should be valid with non-blank start date"

end
