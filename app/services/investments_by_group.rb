class InvestmentsByGroup
  def initialize(group)
    @group = group
  end

  def call
    investments = Investment.all
    investments.each do |investment|
      CalcMatch.call(@group, investment)
    end
    investments.sort {|i1, i2| i2.match <=> i1.match }
  end

  def self.call(group)
    new(group).call
  end
end
