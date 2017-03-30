class MessagesController < ApplicationController

  before_action :set_variables

  def index
    @message = Message.new
  end

  def create
    # bodyに入力値が入った状態で@messageが定義される。
    @message = Message.new(message_params)
    if @message.save
      redirect_to group_messages_path
    else
      flash.now[:alert] = "メッセージを入力してください"
      render :index
    end
  end

  private
  def message_params
    params.require(:message).permit(:body, :image).merge(user_id: current_user.id, group_id: params[:group_id])
  end

  def set_variables
    @group = Group.find(params[:group_id])
    @groups = current_user.groups
    @messages = @group.messages.includes(:user)
  end
end
