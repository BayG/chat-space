class GroupsController < ApplicationController

def new
  @group = Group.new
  @user = current_user
end

def edit
end

end
