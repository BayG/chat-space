require 'rails_helper'

describe MessagesController do
  describe 'GET #index' do
    it "populates an array of messages" do
      messages = create_list(:message, 3)
      get :index
      expect(assigns(:messages)).to match(messages)
    end

    it "renders the :index template" do
      get :index
      expect(responces).to render_template :index
    end
  end
end
