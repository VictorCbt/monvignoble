class InvestmentSearch
  def initialize(params)
    @params = params
  end

  def apply_search
    @investments = Investment.all
    filter_by_query if @params[:query].present?
    filter_by_region if @params[:region].present?
    filter_by_ticket if @params[:ticket_amount].present?
    filter_by_designation if @params[:designation].present?
    filter_by_total_share if @params[:total_share].present?
    filter_by_share_available if @params[:share_available].present?
    filter_by_profitability if @params[:profitability].present?
    filter_by_title if @params[:title].present?
    filter_by_winemaker_profile if @params[:winemaker_profile].present?
    filter_by_deferred_remuneration if @params[:deferred_remuneration].present?
    @investments
  end

  private

  def filter_by_query
    @investments = @investments.where('region like ?', @params[:query])
  end

  def filter_by_region
    @investments = @investments.where(region: @params[:region])
  end

  def filter_by_ticket
    @investments = @investments.where(ticket_amount: @params[:ticket_amount])
  end

  def filter_by_designation
    @investments = @investments.where(designation: @params[:designation])
  end

  def filter_by_total_share
    @investments = @investments.where(total_share: @params[:total_share])
  end

  def filter_by_share_available
    @investments = @investments.where(share_available: @params[:share_available])
  end

  def filter_by_profitability
    @investments = @investments.where(profitability: @params[:profitability])
  end

  def filter_by_title
    @Investment = @investments.where(title: @params[:title])
  end

  def filter_by_winemaker_profile
    @investments = @investments.where(winemaker_profile: @params[:winemaker_profile])
  end

  def filter_by_deferred_remuneration
    @investments = @investments.where(deferred_remuneration: @params[:deferred_remuneration])
  end

end
