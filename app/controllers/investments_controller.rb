class InvestmentsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :show]

  def index
    @group = params.key?(:group) ? Group.new(group_params_search) : Group.new
    @investments = InvestmentsByGroup.call(@group)
  end

  def new
    @investment = Investment.new
  end

  def create
    @investment = Investment.new(investments_strong_params)
    @investment.user = current_user
    if @investment.save
      redirect_to investment_path(@investment)
    else
      render 'new'
    end

  end

  def show
     @investment = Investment.find(params[:id])
  end

  def destroy
    @investment = Investment.find(params[:id])
    @investment.destroy!

  end

  def edit
    @investment = Investment.find(params[:id])
  end

  def update
    @investment = Investment.find(params[:id])
    @investment.update!(investment_params)

    redirect_to investmenet_path(@investment)
  end

private

  def investments_strong_params
    params.require(:investment).permit(
      :investment_name, :punchline, :winemaker_name, :domaine_name, :description,
      :bio, :region, :designation, :ticket_amount, :investment_total, :share_available,
      :total_share, :profitability, :remuneration, :winemaker_profile,
      :deferred_remuneration, :date_of_end, :photo
    )
  end


  def group_params_search
    params.require(:group).permit(
      :region,
      :ticket_amount,
      :investment_total,
      :share_available,
      :services,
      :winemaker_profile,
      :deferred_remunation
    )
  end
end
