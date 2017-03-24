class GroupsController < ApplicationController

  before_action :get_group, only: [:edit, :create, :update]

  def index
  end

  def new
    @group = Group.new
  end

  def edit
  end

  def create
    if @group.save
      redirect_to root_path, info: "チャットグループが作成されました"
    else
      flash.now[:warning] = "グループ作成に失敗しました"
      render :new
    end
  end

  def update
    if @group.update(group_params)
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

    def get_group
      @group = Group.find(params[:id])
    end
end
