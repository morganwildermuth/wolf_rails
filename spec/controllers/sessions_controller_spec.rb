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
      post :create, session: {username: 'morg', password: 'foobar'}
      expect(response).to redirect_to user_path(new_user)
    end
  end

  describe 'DELETE #destroy' do
    let!(:current_user) {FactoryGirl.create(:user)}
    it "ends the current session" do
      post :create, session: {username: 'morg', password: 'foobar'}
      delete :destroy
      expect(controller.current_user).to be_nil
    end
  end
end