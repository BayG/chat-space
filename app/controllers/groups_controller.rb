class GroupsController < ApplicationController

  def index
  end

  def new
    @group = Group.new
  end

  def edit
    @group = Group.find(params[:id])
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      redirect_to root_path, info: "チャットグループが作成されました"
    else
      flash.now[:warning] = "グループ作成に失敗しました"
      render :new
    end
  end

  def update
    @group = Group.find(params[:id])
    if @group.update_attributes(group_params)
      redirect_to root_path, info: "チャットグループが更新されました"
    else
      flash.now[:warning] = "グループ編集に失敗しました"
      render :edit
    end
  end

  private
    def group_params
      params.require(:group).permit(:name)
    end
end
