require 'spec_helper'

feature "user can log in" do
    let!(:current_user) {FactoryGirl.create(:user)}
  scenario "should fill out form and redirect to user page" do
    visit new_session_path
    fill_in "session_username", with: current_user.username
    fill_in "session_password", with: current_user.password
    fill_in "session_email", with: current_user.email
    click_button "Sign in"
    expect(page) == user_path(current_user)
  end
end

