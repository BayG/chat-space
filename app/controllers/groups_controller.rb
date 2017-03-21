class GroupsController < ApplicationController

  def index
    current_user.groups.new
  end

  def new
    @group = Group.new
  end

  def edit
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      redirect_to root_path
      flash.content_tag :div, 1, class: "alert alert-info"
    else
      render :new
      flash.content_tag :div, 0, class: "alert alert-danger"
    end
  end

  private
    def group_params
      params.require(:group).permit(:group_name)
    end
end
