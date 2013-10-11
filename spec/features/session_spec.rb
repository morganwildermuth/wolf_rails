require 'spec_helper'

feature "user can log in" do
    let!(:current_user) {FactoryGirl.create(:user)}
  scenario "should fill out form and redirect to user page" do
    visit new_sessions_path
    fill_in "session_user", with: current_user.user
    fill_in "session_password", with: current_user.password
    click_button "Submit"
    expect(page) == user_path(current_user)
  end
end

end