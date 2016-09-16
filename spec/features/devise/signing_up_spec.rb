require "rails_helper"

RSpec.feature "Users can sign up" do
  scenario "when providing valid details" do
     visit "/"
     click_link "Sign up"
     fill_in "Email", with: "wilson_moreno@1stslp.com" 
     fill_in "Password", with: "unitrade"
     fill_in "Password confirmation", with: "unitrade"
     click_button "Sign up"
     expect(page).to have_content("You have signed up successfully.")   
  end
end
