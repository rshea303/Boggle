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
    fill_in "session[email]", with: "not_a_user@example.com"
    fill_in "session[password]", with: "incorrect"

    expect(current_path).to eq(new_session_path)
  end

  it "can logout" do
    user = create(:user)
    
    sign_in(user)
    click_on("Log Out")

    expect(page).to have_content("Log In")
  end

end
