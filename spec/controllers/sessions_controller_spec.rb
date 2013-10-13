require 'spec_helper'

describe SessionsController do
  describe 'GET #new' do
    it "renders new" do
      get :new
      expect(response).to render_template :new
    end
  end

  describe 'POST #create' do
    let!(:new_user) {FactoryGirl.create(:user)}
    it "assigns a new session" do
<<<<<<< HEAD
      post :create, sessions: {username: new_user.username, password: new_user.password, password_confirmation: new_user.password_confirmation}
      expect(response).to redirect_to user_path(new_user)
=======
      post :create, session: {username: 'morg', email: new_user.email, password: new_user.password}
      expect(response).to redirect_to user_path("#{User.last.id}")
>>>>>>> 862db1eee2ede679d8116374a2f6acc9020e1842
    end
  end

  describe 'DELETE #destroy' do
    let!(:current_user) {FactoryGirl.create(:user)}
    it "ends the current session" do
<<<<<<< HEAD
      post :create, sessions: {username: current_user.username, password: current_user.password, password_confirmation: current_user.password_confirmation}
      delete :destroy
=======
      post :create, session: {username: 'morg', password: 'foobar', email: current_user.email}
      click_link('Log Out')
>>>>>>> 862db1eee2ede679d8116374a2f6acc9020e1842
      expect(controller.current_user).to be_nil
    end
  end
end