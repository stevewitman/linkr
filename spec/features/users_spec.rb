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

	# change to Admin Users can view users
	scenario "Users can view users index" do
		user1 = create_user(
      email: "testuser1@mail.com",
      password: 'test')
		user2 = create_user(
      email: "testuser2@mail.com",
      password: 'test')
		user3 = create_user(
      email: "testuser3@mail.com",
      password: 'test')
    sign_in(user1)
    visit "/users"
    expect(page).to have_content(user1.email)
    expect(page).to have_content(user2.email)
    expect(page).to have_content(user3.email)
	end 

	scenario "Users can delete users from index" do
		user1 = create_user(
      email: "testuser1@mail.com",
      password: 'test')
		user2 = create_user(
      email: "testuser2@mail.com",
      password: 'test')
		sign_in(user1)
		visit "/users"
		expect(page).to have_content(user1.email)
    expect(page).to have_content(user2.email)
		user_last = User.order(:id).last
   	click_on user2.email
		click_on "Delete"
		expect(page).to have_content(user1.email)
    expect(page).to have_no_content(user2.email)
	end

	# scenario "A user can change their password" do
	# 	visit "/"

	# end

end
