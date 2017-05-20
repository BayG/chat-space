require 'rails_helper'

describe MessagesController do
  let(:group) { create(:group) }
  let(:groups) { create_list(:group, 3, user_id: user.id) }
  let(:user) { create(:user) }
  let(:message) { create(:message) }

  before do
    sign_in user
    get :index, params: { group_id: group.id }
  end

  describe 'GET #index' do
    it "renders the :index template" do
      expect(responces).to render_template :index
    end

    it "assigns the required contact to @user" do
      expect(assigns(:user)).to eq user
    end

    it "assigns the required contact to @group" do
      expect(assigns(:group)).to eq group
    end

    it "assigns the required contact to @groups" do
      expect(assigns(:groups)).to eq user.groups
    end
  end

  describe 'POST #create' do
    context "successful submission" do
      it 'increase in the number of data' do
        expect {
          post :create, params: { message: attributes_for(:message), group_id: group, user_id: user }
        }.to change(Message, :count).by(1)
      end

      it 'redirect to group_messages_path' do
        post :create, params: { messages: attributes_for(:message), group_id: group, user_id: user }
        expect(response).to redirect_to group_messages_path
      end
    end

    context "failure submission" do
      it 'no change in the number of data' do
        expect {
        	post :create, params: { message: attributes_for(:message, body: nil), group_id: group, user_id: user }
        }.not_to change(Message, :count)
      end

      it 'render the :index template' do
        post :create, params: { message: attributes_for(:message, body: nil), group_id: group, user_id: user }
        expect(response).to render_template :index
      end
    end
  end
end
