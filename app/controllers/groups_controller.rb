class GroupsController < ApplicationController

  def index
  end

  def new
    @group = Group.new
  end

  def edit
    @group = current_user.groups.find(:name)
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      redirect_to root_path, info: "チャットグルーブが作成されました"
    else
      flash.now[:error] = "グループ作成に失敗しました"
      render :new
    end
  end

  def update
  end

  private
    def group_params
      params.require(:group).permit(:name)
    end
end
