class GroupsController < ApplicationController

  def show
    @group = Group.find(params[:id])
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    @group.admin = current_user
    if @group.save!
      redirect_to group_path(@group)
    else
      render 'new'
    end
  end

  def edit
    @group = Group.find(params[:id])
  end

  def update
    @group = Group.find(params[:id])
    @group.update!(group_params)

    redirect_to group_path(@group)
  end

  def destroy
    @group = Group.find(params[:id])
    @group.destroy

    redirect_to groups_path
  end


  private

  def group_params
    params.require(:group).permit(
      :status,
      :region,
      :designation,
      :profitability,
      :share_available,
      :investment_total,
      :ticket_amount,
      :winemaker_profil,
      :deferred_remunation,
      :votes,
      :services,
      :name
    )
  end
end



