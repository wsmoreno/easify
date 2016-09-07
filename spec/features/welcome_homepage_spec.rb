require "rails_helper"


RSpec.feature "Users views the home page" do

   scenario "with welcome message" do
      visit "/"

      expect(page).to have_content "Log in"
      expect(page).to have_content "Contact Us"
      expect(page).to have_content "About Us"
      expect(page).to have_content "Help"
      expect(page).to have_content "Easify"
   end

end
