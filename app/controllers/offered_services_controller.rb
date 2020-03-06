class OfferedServicesController < ApplicationController
  def index
    @offered_Services = OfferedService.all
  end

  def show
  end

  def new
    @investment = Investment.find(params[:investment_id])
    @offered_service = OfferedService.new
  end

  def create
    @investment = Investment.find(params[:investment_id])
    @offered_service = OfferedService.new(offered_service_strong_params)
    @offered_service.investment = @investment
    if @offered_service.save
      redirect_to @investment, notice: "Le service a été crée"
    end
  end


  private

  def offered_service_strong_params
     params.require(:offered_service).permit(:title, :description)
  end

end
