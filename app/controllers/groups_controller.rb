class GroupsController < ApplicationController

  def show
    @group = Group.find(params[:id])
    @investments = InvestmentsByGroup.call(@group)
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
    @group.admin = current_user
    if @group.update!(group_params)
      redirect_to group_path(@group)
    else
      render 'new'
    end
  end

  def destroy
    @group = Group.find(params[:id])
    @group.destroy

    redirect_to groups_path
  end

  def set_favori
    @group = Group.find(params[:id])
    @investment = Investment.find(params[:investment_id])
    @group.update!(investment: @investment)
    @investments = InvestmentsByGroup.call(@group)
  end

  private

  def group_params
    params.require(:group).permit(
      :name,
      :status,
      :region,
      :designation,
      :ticket_amount,
      :share_available,
      :investment_total,
      :winemaker_profile,
      :deferred_remuneration,
      :investment_id,
      :votes,
      :profitability,
      services: []
    )
  end
end
