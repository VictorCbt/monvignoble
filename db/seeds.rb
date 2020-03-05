OfferedService.destroy_all
UsersGroup.destroy_all
InvestmentsGroup.destroy_all
Investment.destroy_all
Group.destroy_all
User.destroy_all

puts "delete user"

user1 = User.create!(email: "nicolas@test.fr", first_name: "Nicolas", last_name: "Guecheff", password: "123456", password_confirmation: "123456")
user2 = User.create!(email: "marco@test.fr", first_name: "Marco", last_name: "Polo", password: "123456", password_confirmation: "123456")
user3 = User.create!(email: "leonard@test.fr", first_name: "Leonard", last_name: "de Vinci", password: "123456", password_confirmation: "123456")
user4 = User.create!(email: "emmanuel@test.fr", first_name: "Emmanuel", last_name: "Poivrot", password: "123456", password_confirmation: "123456")
user5 = User.create!(email: "angela@test.fr", first_name: "Angela", last_name: "Vinasse", password: "123456", password_confirmation: "123456")

puts "creation #{User.count} users"

group1 = Group.create!(name: "Groupe du Wagon", status: "privé", region: "Bordeaux", designation: "Margaux", winemaker_profile: "Jeune vigneron", votes:"4", profitability: 2, share_available: 3, investment_total: 3000, ticket_amount: 1000, user_id: user1.id)
group2 = Group.create!(name: "Groupe de la confrérerie", status: "publique", region: "Bourgogne", designation: "Saint-Véran", winemaker_profile: "Vigneron installé", votes:"3", profitability: 3, share_available: 10, investment_total: 15000, ticket_amount: 5000, user_id: user4.id)

puts "creation #{Group.count} groups"

investment1 = Investment.create!(investment_name: "Rouges Bordeaux", punchline: "Les vins de Bordeaux sont mondialement connus et font la gloire de la France sur toutes les tables du monde.", winemaker_name: "Robert", domaine_name: "Château Dauzac", description: "En 2009, les superficies déclarées sont de 38 490 hectares en rouges, 700 ha en clairets, 4.725 ha en rosés et 6.040 ha en blancs.", bio: true, region: "Bordeaux", designation: "Margaux", remuneration: "6 bouteilles de Margaux du domaine", ticket_amount: 500, investment_total: 5000, share_available: 10, total_share: 10, profitability: 2, winemaker_profile: "Vigneron installé", deferred_remuneration: true, group_id: group1.id, user_id: user1.id)
investment2 = Investment.create!(investment_name: "Les rois du Bourgogne", punchline: "La réputation des grands domaines viticoles en Bourgogne s’est faite dès le règne de Charlemagne.", winemaker_name: "Jean", domaine_name: "Château de Chasselas", description: "Les 5 principales zones viticoles sont : le Chablis, la Côte d’Or, la Côte Chalonnaise, Le Mâcon, et le Beaujolais (Morgon).", bio: true, region: "Bourgogne", designation: "Saint-Véran", remuneration: "2 magnums du domaine",ticket_amount: 3000, investment_total: 30000, share_available: 3, total_share: 30, profitability: 3 , winemaker_profile: "Jeune vigneron", deferred_remuneration: true, group_id: group1.id, user_id: user2.id)
investment3 = Investment.create!(investment_name: "AOP", punchline: "Les 75 pourcents de vins rouges produits à partir de syrah peuvent comporter (à hauteur de 15 pourcents maximum, comme en Côte Rôtie avec le viognier)", winemaker_name: "Maurice", domaine_name: "Cheateau de la Tour-Cirée", description: "Les terroirs sont très divers et chaque parcelle bien spécifique porte un nom bien connu des passionnés de cette appellation de prestige : Greffieux, Méal, Bessards, Rocoules, etc.", bio: false, region: "Vallée du Rhône", designation: "Hermitage", remuneration: "2 cartons de 6 bouteilles du domaine",ticket_amount: 10000, investment_total: 100000, share_available: 2, total_share: 10, profitability: 5, winemaker_profile: "Jeune vigneron", deferred_remuneration: false, group_id: group2.id, user_id: user3.id)

puts "creation #{Investment.count} investments"

offered_services1 = OfferedService.create!(title: "vendanges et dégustations", description: "participez à des dégustations d'exceptions", investment_id: investment1.id)
offered_services2 = OfferedService.create!(title: "30 bouteilles/an avec étiquetage", description: "recevez chaque année des caisses de notre vin avec votre propre étiquette", investment_id: investment2.id)
offered_services3 = OfferedService.create!(title: "50 bouteilles/an sans étiquetage", description: "recevez chaque année des caisse de notre vin", investment_id: investment3.id)

puts "creation #{OfferedService.count} offered services"

UsersGroup.create!(user_id: user2.id, group_id: group1.id)
UsersGroup.create!(user_id: user3.id, group_id: group1.id)
UsersGroup.create!(user_id: user5.id, group_id: group2.id)
UsersGroup.create!(user_id: user2.id, group_id: group2.id)

group1.investments = [investment1, investment2]
group1.save

group2.investments = [investment2, investment3]
group2.save
# investments_group1 = InvestmentGroup.create!(investment_id: ivestment1)
# investments_group2 = InvestmentGroup.create!()
# investments_group3 = InvestmentGroup.create!()




