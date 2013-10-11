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
      post :create, session: {username: 'morg', email: new_user.email, password: new_user.password}
      expect(response).to redirect_to user_path("#{User.last.id}")
    end
  end

  describe 'DELETE #destroy' do
    let!(:current_user) {FactoryGirl.create(:user)}
    it "ends the current session" do
      post :create, session: {username: 'morg', password: 'foobar', email: current_user.email}
      click_link('Log Out')
      expect(controller.current_user).to be_nil
    end
  end
end