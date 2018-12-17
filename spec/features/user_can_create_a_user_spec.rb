require 'rails_helper'

describe 'as a visitor' do
    it 'can create a user' do
        visit root_path

        click_on "Sign Up"

        username = "Dee"

        fill_in :user_username, with: username
        fill_in :user_password, with: "test"

        click_on "Create User"

        expect(page).to have_content("Welcome #{username}")
    end
end