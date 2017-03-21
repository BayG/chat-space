class GroupsController < ApplicationController

  def index
  end

  def new
    @group = Group.new
  end

  def edit
    @group = current_user.groups.find(:group_name)
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      redirect_to root_path, info: "チャットグルーブが作成されました"
    else
      render :new, error: "グループ作成に失敗しました。"
    end
  end

  def update
  end

  private
    def group_params
      params.require(:group).permit(:group_name)
    end
end
