require 'rails_helper'

describe "visitor" do

  it "can visit sign up page" do
    visit root_path
    click_on("Sign Up")
    
    expect(current_path).to eq(sign_up_path)
  end

  it "can fill in sign up form" do
    visit root_path
    click_on("Sign Up")
    fill_in "user[username]", with: "username"
    fill_in "user[email]", with: "user@example.com"
    fill_in "password", with: "password"
    click_on("Submit")

    expect(page).to have_content("Welcome To Boggle!")
  end
end
