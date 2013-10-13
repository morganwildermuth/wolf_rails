require 'spec_helper'

feature "user can log in" do
    let!(:current_user) {FactoryGirl.create(:user)}
  scenario "should fill out form and redirect to user page" do
    visit new_session_path
    fill_in "sessions_username", with: current_user.username
    fill_in "sessions_password", with: current_user.password
    click_button "Sign In"
    expect(page) == user_path(current_user)
  end
end

