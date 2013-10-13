require 'spec_helper'

feature 'user creation' do 
  let(:new_user) { FactoryGirl.build(:user) }
  scenario 'with valid create user data' do
    visit new_user_path
    fill_in 'user[username]', with: new_user.username
    fill_in 'user[password]', with:
    new_user.password
    fill_in 'user[password_confirmation]', with:
    new_user.password_confirmation
    expect { click_button 'Create User'}.to change(User, :count).by(1)
    expect(page) == (user_path(User.last.id))
  end

  scenario 'with invalid create user data' do 
    visit new_user_path
    fill_in 'user[username]', with: new_user.username
    expect { click_button 'Create User'}.to_not change(User, :count).by(1)
    expect(page) == new_user_path
  end
end