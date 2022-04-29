require 'rails_helper'

RSpec.describe "/users", type: :request do
  let(:valid_attributes) {
    { name: 'John', email: 'test12@test.com' }
  }

  let(:invalid_attributes) {
    { name: 'J', email: 'test12test.com' }
  }

  let(:valid_user) { create(:user, valid_attributes) }

  describe 'GET /index' do
    it 'renders a successful response' do
      get users_url
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      get user_url(valid_user)
      expect(response).to be_successful
    end
  end

  describe 'GET /new' do
    it 'renders a successful response' do
      get new_user_url
      expect(response).to be_successful
    end
  end

  describe 'GET /edit' do
    it 'renders a successful response' do
      get edit_user_url(valid_user)
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new User' do
        expect { post users_url, params: { user: valid_attributes } }.to change(User, :count).by(0)
      end

      it 'redirects to the created user' do
        post users_url, params: { user: valid_attributes }
        expect(response).to redirect_to(user_url(User.last))
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new User' do
        expect { post users_url, params: { user: invalid_attributes } }.to change(User, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post users_url, params: { user: invalid_attributes }
        expect(response.status).to eq(422)
      end
    end
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      let(:new_attributes) {
        { name: 'Jimmy', email: 'updated_test@test.com' }
      }

      it 'updates the requested user' do
        patch user_url(valid_user), params: { user: new_attributes }
        valid_user.reload
        expect(valid_user.name).to eq(new_attributes[:name])
      end

      it 'redirects to the user' do
        patch user_url(valid_user), params: { user: new_attributes }
        valid_user.reload
        expect(response).to redirect_to(user_url(valid_user))
      end
    end

    context 'with invalid parameters' do
      it 'renders a successful response but not change valid user' do
        patch user_url(valid_user), params: { user: invalid_attributes }
        valid_user.reload
        expect(valid_user.name).not_to eq(invalid_attributes[:name])
        expect(response.status).to eq(422)
      end
    end
  end

  describe 'DELETE /destroy' do
    let!(:user_for_destroy) { create(:user, valid_attributes) }

    it 'destroys the requested user' do
      expect {
        delete user_url(user_for_destroy)
      }.to change(User, :count).by(-1)
    end

    it 'redirects to the users list' do
      delete user_url(valid_user)
      expect(response).to redirect_to(users_url)
    end
  end
end
