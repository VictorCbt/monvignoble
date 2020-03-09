class CalcMatch
  TICKET_AMOUNT_WEIGHT = 30
  INVESTMENT_TOTAL_WEIGHT = 20
  REGION_WEIGTH = 40
  WINEMAKER_PROFILE_WEIGHT = 10

  def initialize(group, investment)
    @group      = group
    @investment = investment
    @match = 0
  end

  def call
    cal_ticket_amount
    cal_investment_total
    cal_region
    cal_winemaker_profile
    @investment.match = @match
  end

  def self.call(group, investment)
    new(group, investment).call
  end

  private

  def cal_ticket_amount
    if @group.ticket_amount.nil?
      @match += TICKET_AMOUNT_WEIGHT
    else
      range = @investment.ticket_amount
      gap = (@investment.ticket_amount - @group.ticket_amount).abs
      return if gap >= range
      @match += (TICKET_AMOUNT_WEIGHT - (TICKET_AMOUNT_WEIGHT * gap / range))
    end
  end

  def cal_investment_total
    if @group.investment_total.nil?
      @match += INVESTMENT_TOTAL_WEIGHT
    else
      range = @investment.investment_total / 4
      gap = (@investment.investment_total - @group.investment_total).abs
      return if gap >= range
      @match += (INVESTMENT_TOTAL_WEIGHT - (INVESTMENT_TOTAL_WEIGHT * gap / range))
    end
  end

  def cal_region
     if @group.region.nil?
      @match += REGION_WEIGTH
    elsif
      @group.region == @investment.region
      @match += REGION_WEIGTH
    else
      @match += 0
    end
  end


  def cal_winemaker_profile
    if @group.winemaker_profile.nil?
      @match += WINEMAKER_PROFILE_WEIGHT
    elsif
      @group.winemaker_profile == @investment.winemaker_profile
      @match += WINEMAKER_PROFILE_WEIGHT
    else
      @match += 0
    end
  end
end


  # def match(options = {})
  #   @calc = 0
  #   cal_region(option[:region])
  #   cal_winemaker_profile(option[:winemaker_profile])
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
