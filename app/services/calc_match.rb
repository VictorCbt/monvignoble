class CalcMatch
  TICKET_AMOUT_WEIGHT = 20

  def initialize(group, investment)
    @group      = group
    @investment = investment
    @match = 0
  end

  def call
    cal_ticket_amount

    @investment.match = @match
  end

  def self.call(group, investment)
    new(group, investment).call
  end


  private

  def cal_ticket_amount
    if @group.ticket_amount.nil?
      @match += TICKET_AMOUT_WEIGHT
    else
      range = @investment.ticket_amount / 4
      gap = (@investment.ticket_amount - @group.ticket_amount).abs
      return if gap >= range
      @match += (TICKET_AMOUT_WEIGHT - (TICKET_AMOUT_WEIGHT * gap / range))
    end
  end
end


  # def match(options = {})
  #   @calc = 0
  #   cal_region(option[:region])
  #   cal_designation(option[:designation])
  #   cal_winemaker_profile(option[:winemaker_profile])
  #   cal_deferred_remuneration(option[:deferred_remuneration])
  #   cal_services(option[:services])
  #   cal_profitability(option[:profitability])
  #   cal_share_available(option[:share_available])
  #   cal_investment_total(option[:investment_total])
  #   cal_ticket_amount(option[:ticket_amount])
  #   @calc
  # end

  # def cal_ticket_amount(option_ticket_amount)
  #   @calc += 20 # regle de 3 à faire
  # end

  # def cal_region(option_region)
  #   return 10 if option_region.nil?

  #   @calc += option_region == self.region ? 10 : 0
  # end
