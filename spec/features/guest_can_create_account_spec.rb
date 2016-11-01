require 'rails_helper'

feature "Guest can create an account" do
  scenario "guest provides valid information" do
    visit root_path
    click_button "Create Account"

    expect(current_path).to eq(new_user_registration_path)

    fill_in :user_first_name, with: "Roberta"
    fill_in :user_last_name, with: "Doyle"
    fill_in :user_email, with: "example@gmail.com"
    fill_in :user_password, with: "password"
    fill_in :user_password_confirmation, with: "password"
    click_button "Create Account"

    # expect(current_path).to eq(user_dashboard)
  end
end
