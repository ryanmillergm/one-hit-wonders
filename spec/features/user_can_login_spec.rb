require 'rails_helper'

describe "Existing user" do
  it "can login" do
    user = User.create(username: "Dee", password: "test")

    visit root_path

    click_on "Login"

    expect(current_path).to eq(login_path)

    fill_in "username", with: user.username
    fill_in "password", with: user.password
    click_on "Log In"

    expect(current_path).to eq(user_path(user))
    expect(page).to have_content("Welcome #{user.username}")
    expect(page).to have_content("Log out")
  end
end
