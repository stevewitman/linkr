require "rails_helper"

feature "Users" do 

	scenario "Users can create a user" do
		visit "/"
		within(".jumbotron") do
			click_on "Sign Up"
		end
		fill_in "user[email]", with: "testuser@test.test"
    fill_in "user[password]", with: "test"
    fill_in "user[password_confirmation]", with: "test"
    click_button "Sign Up"
   	expect(page).to have_content("Thank you for signing up!")
   	expect(page).to have_content("testuser")
	end

	scenario "A user can change their password" do
		visit "/"

	end

end
