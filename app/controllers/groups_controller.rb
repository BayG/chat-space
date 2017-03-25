class GroupsController < ApplicationController

  before_action :set_group, only: [:edit, :update]

  def index
  end

  def new
    @group = Group.new
  end

  def edit
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      redirect_to root_path, notice: "チャットグループが作成されました"
    else
      flash.now[:warning] = "グループ作成に失敗しました"
      render :new
    end
  end

  def update
    if @group.update(group_params)
      redirect_to root_path, notice: "チャットグループが更新されました"
    else
      flash.now[:warning] = "グループ編集に失敗しました"
      render :edit
    end
  end

  private
    def group_params
      params.require(:group).permit(:name, { :user_ids=> [] })
    end

    def set_group
      @group = Group.find(params[:id])
    end
end
