class GroupsController < ApplicationController

  def index
    @groups = Group.all
  end

  def new
    @group = Group.new
    @user = current_user
  end

  def edit
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
    def group_params
      params.require(:group).permit(:group_name)
    end
end
