


investment = Investment.new(ticket_amount: 400)
group = Group.new
CalcMatch.new(group, investment).call
ap "#{group.ticket_amount} ===> #{investment.match}"


investment = Investment.new(ticket_amount: 400)
group = Group.new(ticket_amount: 250)
CalcMatch.new(group, investment).call
ap "#{group.ticket_amount} ===> #{investment.match}"


investment = Investment.new(ticket_amount: 400)
group = Group.new(ticket_amount: 300)
CalcMatch.new(group, investment).call
ap "#{group.ticket_amount} ===> #{investment.match}"

investment = Investment.new(ticket_amount: 400)
group = Group.new(ticket_amount: 320)
CalcMatch.new(group, investment).call
ap "#{group.ticket_amount} ===> #{investment.match}"

investment = Investment.new(ticket_amount: 400)
group = Group.new(ticket_amount: 390)
CalcMatch.new(group, investment).call
ap "#{group.ticket_amount} ===> #{investment.match}"

investment = Investment.new(ticket_amount: 400)
group = Group.new(ticket_amount: 400)
CalcMatch.new(group, investment).call
ap "#{group.ticket_amount} ===> #{investment.match}"

investment = Investment.new(ticket_amount: 400)
group = Group.new(ticket_amount: 440)
CalcMatch.new(group, investment).call
ap "#{group.ticket_amount} ===> #{investment.match}"



investment = Investment.new(ticket_amount: 400)
group = Group.new(ticket_amount: 480)
CalcMatch.new(group, investment).call
ap "#{group.ticket_amount} ===> #{investment.match}"


investment = Investment.new(ticket_amount: 400)
group = Group.new(ticket_amount: 500)
CalcMatch.new(group, investment).call
ap "#{group.ticket_amount} ===> #{investment.match}"


investment = Investment.new(ticket_amount: 400)
group = Group.new(ticket_amount: 530)
CalcMatch.new(group, investment).call
ap "#{group.ticket_amount} ===> #{investment.match}"
