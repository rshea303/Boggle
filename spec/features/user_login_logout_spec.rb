require 'rails_helper'
require 'spec_helper'

describe "user" do

  it "can login with credentials" do
    user = create(:user)
    binding.pry
  end

  it "cannot login without credentials" do
  end

end
