module LoginMacros
  def sign_up(user)
    visit root_path

    click_button "Sign up"
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    fill_in "Password confirmation", with: user.password

    click_button "Sign up"
  end

  def sign_in(user)
    visit root_path

    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button "Sign in"
  end
end