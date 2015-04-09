def sign_in(user)
  visit root_path
  click_on("Log In")
  fill_in "session[email]", with: user.email
  fill_in "session[password]", with: user.password
  click_on("Submit")
end

