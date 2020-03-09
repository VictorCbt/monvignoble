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
user4 = User.create!(email: "guillaume@test.fr", first_name: "Guillaume", last_name: "Boissonnet", password: "123456", password_confirmation: "123456")
user5 = User.create!(email: "angela@test.fr", first_name: "Angela", last_name: "Vinasse", password: "123456", password_confirmation: "123456")

puts "creation #{User.count} users"

group1 = Group.create!(name: "Groupe du Wagon", status: "privé", region: "Bordeaux", designation: "Margaux", winemaker_profile: "Jeune vigneron", votes:"4", profitability: 2, share_available: 3, investment_total: 3000, ticket_amount: 1000, user_id: user1.id)
group2 = Group.create!(name: "Groupe de la confrérerie", status: "publique", region: "Bourgogne", designation: "Saint-Véran", winemaker_profile: "Vigneron installé", votes:"3", profitability: 3, share_available: 10, investment_total: 15000, ticket_amount: 5000, user_id: user4.id)

puts "creation #{Group.count} groups"

investment1 = Investment.create!(investment_name: "Rouges Bordeaux", punchline: "Les vins de Bordeaux sont mondialement connus et font la gloire de la France sur toutes les tables du monde.", winemaker_name: "Robert", domaine_name: "Château Dauzac", description: "En 2009, les superficies déclarées sont de 38 490 hectares en rouges, 700 ha en clairets, 4.725 ha en rosés et 6.040 ha en blancs.", bio: true, region: "Bordeaux", designation: "Margaux", remuneration: "6 bouteilles de Margaux du domaine", ticket_amount: 500, investment_total: 5000, share_available: 10, total_share: 10, profitability: 2, winemaker_profile: "Vigneron installé", deferred_remuneration: true, group_id: group1.id, user_id: user1.id)
investment2 = Investment.create!(investment_name: "Les rois du Bourgogne", punchline: "La réputation des grands domaines viticoles en Bourgogne s’est faite dès le règne de Charlemagne.", winemaker_name: "Jean", domaine_name: "Château de Chasselas", description: "Les 5 principales zones viticoles sont : le Chablis, la Côte d’Or, la Côte Chalonnaise, Le Mâcon, et le Beaujolais (Morgon).", bio: true, region: "Bourgogne", designation: "Saint-Véran", remuneration: "2 magnums du domaine",ticket_amount: 3000, investment_total: 30000, share_available: 3, total_share: 30, profitability: 3 , winemaker_profile: "Jeune vigneron", deferred_remuneration: true, group_id: group1.id, user_id: user2.id)
investment3 = Investment.create!(investment_name: "AOP", punchline: "Les 75 pourcents de vins rouges produits à partir de syrah peuvent comporter (à hauteur de 15 pourcents maximum, comme en Côte Rôtie avec le viognier)", winemaker_name: "Maurice", domaine_name: "Château de la Tour-Cirée", description: "Les terroirs sont très divers et chaque parcelle bien spécifique porte un nom bien connu des passionnés de cette appellation de prestige : Greffieux, Méal, Bessards, Rocoules, etc.", bio: false, region: "Vallée du Rhône", designation: "Hermitage", remuneration: "2 cartons de 6 bouteilles du domaine",ticket_amount: 10000, investment_total: 100000, share_available: 2, total_share: 10, profitability: 5, winemaker_profile: "Jeune vigneron", deferred_remuneration: false, group_id: group2.id, user_id: user3.id)
investment4 = Investment.create!(investment_name: "Achat d'une parcelle de Côte Rotie", punchline: "Suivez et supportez un jeune vigneron dans son aventure viticole !", winemaker_name: "Guillaume Boissonnet", domaine_name: "Domaine Boissonnet", description: "Sur les côteaux escarpés qui surplombent la vallée du Rhône, nous travaillons près de 11 hectares de vignes (10 hectares en AOC Saint Joseph et 1 Hectare en AOC Condrieu) dans le plus grand respect du terroir et de la maîtrise des rendements.", bio: false, region: "Vallée du Rhône", designation: "Côte Rotie", remuneration: "6 bouteilles de Côtie Rotie",ticket_amount: 10000, investment_total: 150000, share_available: 5, total_share: 15, profitability: 2, winemaker_profile: "Jeune vigneron", deferred_remuneration: true, group_id: group1.id, user_id: user4.id)

puts "creation #{Investment.count} investments"

require "open-uri"

file1 = URI.open('https://images.pexels.com/photos/943700/pexels-photo-943700.jpeg?cs=srgb&dl=green-farm-943700.jpg&fm=jpg')
investment1.photo.attach(io: file1, filename: 'investment1.png', content_type: 'image/png')
file2 = URI.open('https://images.unsplash.com/photo-1562497261-397e5f16eeb7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80')
investment2.photo.attach(io: file2, filename: 'investment2.png', content_type: 'image/png')
file3 = URI.open('https://images.unsplash.com/photo-1464638681273-0962e9b53566?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80')
investment3.photo.attach(io: file3, filename: 'investment3.png', content_type: 'image/png')
file4 = URI.open('https://images.unsplash.com/photo-1504279577054-acfeccf8fc52?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1567&q=80')
investment4.photo.attach(io: file4, filename: 'investment4.png', content_type: 'image/png')

puts "creation photos"

offered_services1 = OfferedService.create!(title: "Découverte des vendanges", description: "participez à des dégustations d'exceptions", investment_id: investment1.id)
offered_services2 = OfferedService.create!(title: "Etiquette de bouteille personnalisée", description: "recevez chaque année des caisses de notre vin avec votre propre étiquette", investment_id: investment1.id)
offered_services3 = OfferedService.create!(title: "Etiquette de bouteille personnalisée", description: "recevez chaque année des caisse de notre vin", investment_id: investment2.id)
offered_services4 = OfferedService.create!(title: "Découverte des vendanges", description: "participez à des dégustations d'exceptions", investment_id: investment4.id)
offered_services5 = OfferedService.create!(title: "Etiquette de bouteille personnalisée", description: "recevez chaque année des caisses de notre vin avec votre propre étiquette", investment_id: investment4.id)

puts "creation #{OfferedService.count} offered services"

UsersGroup.create!(user_id: user1.id, group_id: group1.id, status: 'validate')
UsersGroup.create!(user_id: user3.id, group_id: group1.id, status: 'pending')
UsersGroup.create!(user_id: user4.id, group_id: group2.id, status: 'validate')
UsersGroup.create!(user_id: user2.id, group_id: group2.id, status: 'waiting')

group1.investments = [investment1, investment2]
group1.save

group2.investments = [investment2, investment3]
group2.save
# investments_group1 = InvestmentGroup.create!(investment_id: ivestment1)
# investments_group2 = InvestmentGroup.create!()
# investments_group3 = InvestmentGroup.create!()

