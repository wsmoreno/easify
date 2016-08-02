require "rails_helper"


RSpec.feature "Users views the home page" do

   scenario "with welcome message" do
      visit "/"
   end

end
