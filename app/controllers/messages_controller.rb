class MessagesController < ApplicationController

  def index
    @message = Message.new
    # @group = Group.find(params[:group_id])
  end

  def create
    # Message.create(body: params[:body], image: params[:image], user_id: params[:user_id], group_id: params[:group_id])
  end
end
