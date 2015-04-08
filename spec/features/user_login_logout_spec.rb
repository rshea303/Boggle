require 'rails_helper'
require 'spec_helper'

describe "user" do

  it "can login with credentials" do
    user = create(:user)
    sign_in(user)
  end

  it "cannot login without credentials" do
  end

  def sign_in(user)
    visit root_path
    click_on("Log In")
    fill_in "session[email]", with: user.email
    fill_in "session[password]", with: user.password
    click_on("Submit")
  end
end
