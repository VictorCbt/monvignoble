class UsersGroupsController < ApplicationController

  def new
    @group = Group.find(params[:group_id])
    @users_group = UsersGroup.new
  end

  def create
    @group = Group.find(params[:group_id])
    @users_group = UsersGroup.new(user_group_strong_params)
    @users_group.group = @group
    @users_group.user = current_user
  end


  def show
    @group = Group.find(params[:group_id])
    @users_group = UsersGroup.find(params[:id])
  end

  def index
    @group = Group.find(params[:group_id])
    @users_groups = UsersGroup.all

  end

  def join_request
    @group = Group.find(params[:group_id])
    @users_group = UsersGroup.new
    @users_group.group = @group
    @users_group.user = current_user
    @users_group.status = "pending"
    @users_group.save!
  end

  def confirm
    @users_group = UsersGroup.find(params[:id])
    @users_group.confirm!
    redirect_to group_path(@users_group.group)
  end

private

  def user_group_strong_params
    params.require(:users_group).permit(:status)
  end

end
