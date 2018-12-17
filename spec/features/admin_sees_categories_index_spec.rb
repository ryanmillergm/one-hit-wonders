require 'rails_helper'

describe "as an admin" do
  it "allows admin to see all categories" do
    admin = User.create(username: 'Dee', password: "test", role: 1)

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(admin)

    visit admin_categories_path

    expect(page).to have_content("Admin Categories")
  end

  it 'default user cannot see categories index' do
    user = User.create(username: "Ian", password: "password")

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit admin_categories_path

    expect(page).to_not have_content("Admin Categories")
    expect(page).to have_content("The page you were looking for doesn't exist.")
    expect(page.status_code).to eq(404)
  end
end
