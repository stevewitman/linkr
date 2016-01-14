module ObjectCreationMethods

  def create_user(overrides = {})
    defaults = {
      email: "test@mail.com",
      password: 'test'
    }
    User.create(defaults.merge(overrides))
  end

  def sign_in(user)
    visit "/"
    within(".jumbotron") do
      click_on "Sign In"
    end
    fill_in "email", with: user.email
    fill_in "password", with: user.password
    click_button "Sign In"
  end

end

