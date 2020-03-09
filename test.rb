
investment = Investment.new(ticket_amount: 25000)
group = Group.new
CalcMatch.new(group, investment).call
ap "#{group.ticket_amount} ===> #{investment.match}"

investment = Investment.new(ticket_amount: 25000)
group = Group.new(ticket_amount: 0)
CalcMatch.new(group, investment).call
ap "#{group.ticket_amount} ===> #{investment.match}"

investment = Investment.new(ticket_amount: 25000)
group = Group.new(ticket_amount: 5000)
CalcMatch.new(group, investment).call
ap "#{group.ticket_amount} ===> #{investment.match}"

investment = Investment.new(ticket_amount: 25000)
group = Group.new(ticket_amount: 10000)
CalcMatch.new(group, investment).call
ap "#{group.ticket_amount} ===> #{investment.match}"

investment = Investment.new(ticket_amount: 25000)
group = Group.new(ticket_amount: 22000)
CalcMatch.new(group, investment).call
ap "#{group.ticket_amount} ===> #{investment.match}"

investment = Investment.new(ticket_amount: 25000)
group = Group.new(ticket_amount: 25000)
CalcMatch.new(group, investment).call
ap "#{group.ticket_amount} ===> #{investment.match}"

investment = Investment.new(ticket_amount: 25000)
group = Group.new(ticket_amount: 27000)
CalcMatch.new(group, investment).call
ap "#{group.ticket_amount} ===> #{investment.match}"

investment = Investment.new(ticket_amount: 25000)
group = Group.new(ticket_amount: 30000)
CalcMatch.new(group, investment).call
ap "#{group.ticket_amount} ===> #{investment.match}"

investment = Investment.new(ticket_amount: 25000)
group = Group.new(ticket_amount: 48000)
CalcMatch.new(group, investment).call
ap "#{group.ticket_amount} ===> #{investment.match}"

investment = Investment.new(ticket_amount: 25000)
group = Group.new(ticket_amount: 50000)
CalcMatch.new(group, investment).call
ap "#{group.ticket_amount} ===> #{investment.match}"

investment = Investment.new(ticket_amount: 25000)
group = Group.new(ticket_amount: 51000)
CalcMatch.new(group, investment).call
ap "#{group.ticket_amount} ===> #{investment.match}"


puts "-----------------------------------------------------------------------"

investment = Investment.new(investment_total: 500000)
group = Group.new
CalcMatch.new(group, investment).call
ap "#{group.investment_total} ===> #{investment.match}"

investment = Investment.new(investment_total: 500000)
group = Group.new(investment_total: 100000)
CalcMatch.new(group, investment).call
ap "#{group.investment_total} ===> #{investment.match}"

investment = Investment.new(investment_total: 500000)
group = Group.new(investment_total: 200000)
CalcMatch.new(group, investment).call
ap "#{group.investment_total} ===> #{investment.match}"

investment = Investment.new(investment_total: 500000)
group = Group.new(investment_total: 300000)
CalcMatch.new(group, investment).call
ap "#{group.investment_total} ===> #{investment.match}"

investment = Investment.new(investment_total: 500000)
group = Group.new(investment_total: 400000)
CalcMatch.new(group, investment).call
ap "#{group.investment_total} ===> #{investment.match}"

investment = Investment.new(investment_total: 500000)
group = Group.new(investment_total: 500000)
CalcMatch.new(group, investment).call
ap "#{group.investment_total} ===> #{investment.match}"

investment = Investment.new(investment_total: 500000)
group = Group.new(investment_total: 600000)
CalcMatch.new(group, investment).call
ap "#{group.investment_total} ===> #{investment.match}"

investment = Investment.new(investment_total: 500000)
group = Group.new(investment_total: 700000)
CalcMatch.new(group, investment).call
ap "#{group.investment_total} ===> #{investment.match}"

investment = Investment.new(investment_total: 500000)
group = Group.new(investment_total: 800000)
CalcMatch.new(group, investment).call
ap "#{group.investment_total} ===> #{investment.match}"

investment = Investment.new(investment_total: 500000)
group = Group.new(investment_total: 900000)
CalcMatch.new(group, investment).call
ap "#{group.investment_total} ===> #{investment.match}"


puts "-----------------------------------------------------------------------"

investment = Investment.new(winemaker_profile: "Jeune vigneron")
group = Group.new
CalcMatch.new(group, investment).call
ap "#{group.winemaker_profile} ===> #{investment.match}"

investment = Investment.new(winemaker_profile: "Vigneron installé")
group = Group.new
CalcMatch.new(group, investment).call
ap "#{group.winemaker_profile} ===> #{investment.match}"

investment = Investment.new(winemaker_profile: "Jeune vigneron")
group = Group.new(winemaker_profile: "Jeune vigneron")
CalcMatch.new(group, investment).call
ap "#{group.winemaker_profile} ===> #{investment.match}"

investment = Investment.new(winemaker_profile: "Jeune vigneron")
group = Group.new(winemaker_profile: "Vigneron installé")
CalcMatch.new(group, investment).call
ap "#{group.winemaker_profile} ===> #{investment.match}"

investment = Investment.new(winemaker_profile: "Vigneron installé")
group = Group.new(winemaker_profile: "Vigneron installé")
CalcMatch.new(group, investment).call
ap "#{group.winemaker_profile} ===> #{investment.match}"

investment = Investment.new(winemaker_profile: "Vigneron installé")
group = Group.new(winemaker_profile: "Jeune vigneron")
CalcMatch.new(group, investment).call
ap "#{group.winemaker_profile} ===> #{investment.match}"

puts "-----------------------------------------------------------------------"

investment = Investment.new(region: "Bordeaux")
group = Group.new
CalcMatch.new(group, investment).call
ap "#{group.region} ===> #{investment.match}"

investment = Investment.new(region: "Vallée du Rhône")
group = Group.new
CalcMatch.new(group, investment).call
ap "#{group.region} ===> #{investment.match}"

investment = Investment.new(region: "Bordeaux")
group = Group.new(region: "Bordeaux")
CalcMatch.new(group, investment).call
ap "#{group.region} ===> #{investment.match}"

investment = Investment.new(region: "Vallée du Rhône")
group = Group.new(region: "Vallée du Rhône")
CalcMatch.new(group, investment).call
ap "#{group.region} ===> #{investment.match}"

investment = Investment.new(region: "Bordeaux")
group = Group.new(region: "Vallée du Rhône")
CalcMatch.new(group, investment).call
ap "#{group.region} ===> #{investment.match}"

investment = Investment.new(region: "Vallée du Rhône")
group = Group.new(region: "Bordeaux")
CalcMatch.new(group, investment).call
ap "#{group.region} ===> #{investment.match}"
