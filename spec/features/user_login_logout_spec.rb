require 'rails_helper'
require 'spec_helper'

describe "user" do

  it "can login with credentials" do
    user = create(:user)
    sign_in(user)

    expect(page).to have_content("Welcome, #{user.username.capitalize}")
  end

  it "cannot login without credentials" do
    visit "/"
    click_on("Log In")
    fill_in "session[email]", with: "not_a_user@email.com"
    fill_in "session[password]", with: "incorrect"

    expect(current_path).to eq(new_session_path)
  end

  def sign_in(user)
    visit root_path
    click_on("Log In")
    fill_in "session[email]", with: user.email
    fill_in "session[password]", with: user.password
    click_on("Submit")
  end
end
