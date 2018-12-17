require 'rails_helper'

describe 'an existing user' do
  it 'can logout' do
    user = User.create(username: "Dee", password: "test")

    visit root_path

    click_on "Login"

    fill_in "username", with: user.username
    fill_in "password", with: user.password
    click_on "Log In"

    click_on "Log out"

    expect(current_path).to eq(root_path)
    expect(page).to have_content("Login")
    expect(page).to_not have_content("Log out")
  end
end
