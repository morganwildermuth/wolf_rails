require 'spec_helper'

feature 'user creation' do 
  let(:new_user) { FactoryGirl.create(:user) }
  scenario 'with valid create user data' do
    visit new_user_path
    fill_in 'user[user_name]', with: new_user.user_name
    fill_in 'user[password]', with:
    new_user.password
    expect { click_button 'Create User'}.to change(User, :count).by(1)
    expect(page) == (user_path(User.last.id))
  end

  scenario 'with invalid create user data' do 
    visit new_user_path
    fill_in 'user[user_name]', with: new_user.user_name
    expect { click_button 'Create User'}.to_not change(User, :count).by(1)
    expect(page) == new_user_path
  end
end