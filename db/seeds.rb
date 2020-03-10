OfferedService.destroy_all
UsersGroup.destroy_all
InvestmentsGroup.destroy_all
Investment.destroy_all
Group.destroy_all
User.destroy_all

puts "delete user"

user1 = User.create!(email: "kevin@chavanne.com", first_name: "Kévin", last_name: "Chavanne", avatar: "https://avatars2.githubusercontent.com/u/472453?s=460&v=4", password: "123456", password_confirmation: "123456")
user2 = User.create!(email: "joseph@blanchard.com", first_name: "Joseph", last_name: "Blanchard", avatar: "https://avatars2.githubusercontent.com/u/5313828?s=460&v=4", password: "123456", password_confirmation: "123456")
user3 = User.create!(email: "matthieu@cartillier.com", first_name: "Matthieu", last_name: "Cartillier", avatar: "https://avatars3.githubusercontent.com/u/25009165?s=460&v=4", password: "123456", password_confirmation: "123456")
user4 = User.create!(email: "benjamin@jolivot.com", first_name: "Benjamin", last_name: "Jolivot", avatar: "https://ca.slack-edge.com/T02NE0241-UBNMHLAFL-04160ba4ae61-512", password: "123456", password_confirmation: "123456")
user5 = User.create!(email: "emmanuelle@nadal.com", first_name: "Emmanuelle", last_name: "Nadal", avatar: "https://avatars2.githubusercontent.com/u/42236101?s=400&v=4", password: "123456", password_confirmation: "123456")

user6 = User.create!(email: "guillaume@boissonnet.com", first_name: "Guillaume", last_name: "Boissonnet", avatar: "https://media-exp1.licdn.com/dms/image/C4D03AQGElxR8TGK0hA/profile-displayphoto-shrink_800_800/0?e=1589414400&v=beta&t=0l-4FNUC9s2_IImIx6l8JrsOUMBwgKYmP5ewELrTXYo", password: "123456", password_confirmation: "123456")
user7 = User.create!(email: "sebastien@chabal.com", first_name: "Sébastien", last_name: "Chabal", avatar: "https://medias.laprovence.com/CtQ8TAQ2z8unPif6cjMaUaLZVk0=/850x575/top/smart/c498e64ee5bc4be38b76ef92410c60d2/chabal_d.jpg", password: "123456", password_confirmation: "123456")
user8 = User.create!(email: "laetitia@allemand.com", first_name: "Laetitia", last_name: "Allemand", avatar: "https://www.avenuedesvins.fr/modules/leoblog/views/img/b/b-domaine_allemand-laetitia_allemand.jpg", password: "123456", password_confirmation: "123456")
user9 = User.create!(email: "gaetan@lafoy.com", first_name: "Gaetan", last_name: "Lafoy", avatar: "http://user-images.strikinglycdn.com/res/hrscywv4p/image/upload/c_limit,f_auto,h_3000,q_90,w_1200/729924/P1030893_nxawjq.jpg", password: "123456", password_confirmation: "123456")
user10 = User.create!(email: "fanny@prunier.com", first_name: "Fanny", last_name: "Prunier", avatar: "https://images.larepubliquedespyrenees.fr/2017/10/30/59f6ae85a43f5e057a01afe8/golden/1000x625/celine-oulie-travaille.jpg", password: "123456", password_confirmation: "123456")


puts "creation #{User.count} users"


group1 = Group.create!(name: "Groupe des teachers", status: "publique", region: "Vallée du Rhône", designation: "Côte-Rotie", winemaker_profile: "Jeune vigneron", votes: 5, profitability: 3, share_available: 3, investment_total: 3000, ticket_amount: 1000, deferred_remuneration: false, user_id: user1.id)
group2 = Group.create!(name: "Groupe des alumnis", status: "publique", region: "Bourgogne", designation: "Puligny-Montrachet", winemaker_profile: "Vigneron installé", votes: 4, profitability: 2, share_available: 10, investment_total: 15000, ticket_amount: 5000, deferred_remuneration: true, user_id: user3.id)

#services: ["Découverte des vendanges", "Etiquette de bouteille personnalisée", "Initiation au processus de vinification"]
#services: ["Invitation à la dégustation annuelle", "Visite du domaine"]

puts "creation #{Group.count} groups"

investment1 = Investment.create!(investment_name: "Achat d'une parcelle de Condrieu", punchline: "Suivez et supportez un jeune vigneron dans son aventure viticole !", winemaker_name: "Guillaume Boissonnet", domaine_name: "Domaine Boissonnet", description: "Sur les côteaux escarpés qui surplombent la vallée du Rhône, nous travaillons près de 11 hectares de vignes (10 hectares en AOC Saint Joseph et 1 Hectare en AOC Condrieu) dans le plus grand respect du terroir et de la maîtrise des rendements.", bio: true, region: "Vallée du Rhône", designation: "Condrieu", remuneration: "6 bouteilles de Condrieu du domaine",ticket_amount: 10000, investment_total: 50000, share_available: 5, total_share: 5, profitability: 2, winemaker_profile: "Jeune vigneron", deferred_remuneration: true, group_id: group1.id, user_id: user6.id)
investment2 = Investment.create!(investment_name: "Achat d'une parcelle de Côte-Rôtie", punchline: "Devenez propriétaire d'une parcelle de l'un des vins les plus réputées de la vallée du Rhône !", winemaker_name: "Gaëtan Lafoy", domaine_name: "Domaine Lafoy", description: "La Famille est implantée depuis trois générations, dans le village d'Ampuis, plein cœur du Vignoble de Côte Rôtie. Le trait de caractère du Domaine, est de produire des vins accentués sur la Fraîcheur, la Minéralité, l'Elégance, la Finesse et l'harmonie, tout en respectant et en gardant l'aspect de terroir.", bio: false, region: "Vallée du Rhône", designation: "Côte Rotie", remuneration: "6 bouteilles de Côtie Rotie du domaine",ticket_amount: 10000, investment_total: 70000, share_available: 7, total_share: 7, profitability: 2, winemaker_profile: "Vigneron installé", deferred_remuneration: false, group_id: group1.id, user_id: user9.id)
investment3 = Investment.create!(investment_name: "Modernisation de la cave", punchline: "Suivez et supportez un jeune vigneron dans son aventure viticole !", winemaker_name: "Sébastien Chabal", domaine_name: "Domaine Chabal", description: "Sur les côteaux escarpés qui surplombent la vallée du Rhône, nous travaillons près de 11 hectares de vignes (10 hectares en AOC Saint Joseph et 1 Hectare en AOC Condrieu) dans le plus grand respect du terroir et de la maîtrise des rendements.", bio: true, region: "Vallée du Rhône", designation: "Saint-Joseph", remuneration: "6 bouteilles de Saint-Joseph du domaine",ticket_amount: 5000, investment_total: 50000, share_available: 10, total_share: 10, profitability: 2, winemaker_profile: "Jeune vigneron", deferred_remuneration: false, group_id: group1.id, user_id: user7.id)
investment4 = Investment.create!(investment_name: "Achat d'une parcelle de Saint-Joseph", punchline: "Suivez et supportez un jeune vigneron dans son aventure viticole !", winemaker_name: "Laetitial Allemand", domaine_name: "Domaine Allemand", description: "Sur les côteaux escarpés qui surplombent la vallée du Rhône, nous travaillons près de 11 hectares de vignes (10 hectares en AOC Saint Joseph et 1 Hectare en AOC Condrieu) dans le plus grand respect du terroir et de la maîtrise des rendements.", bio: true, region: "Vallée du Rhône", designation: "Saint-Joseph", remuneration: "6 bouteilles de Saint-Joseph du domaine",ticket_amount: 5000, investment_total: 40000, share_available: 8, total_share: 8, profitability: 2, winemaker_profile: "Jeune vigneron", deferred_remuneration: true, group_id: group1.id, user_id: user8.id)
investment5 = Investment.create!(investment_name: "Achat d'une parcelle de Bourgogne", punchline: "La réputation des grands domaines viticoles en Bourgogne n'est plus à faire!", winemaker_name: "Fanny Prunier", domaine_name: "Domaine Prunier", description: "C’est une affaire familiale bien rodée que font tourner Michel, sa femme et sa fille. Le premier s’occupe de la vigne et du chai, la seconde de la partie administrative et de la comptabilité, la troisième de la partie commerciale et de la visite.", bio: true, region: "Bourgogne", designation: "Volney", remuneration: "3 bouteilles de Volney 1er Cru du domaine",ticket_amount: 10000, investment_total: 50000, share_available: 5, total_share: 5, profitability: 2, winemaker_profile: "Jeune vigneron", deferred_remuneration: true, group_id: group1.id, user_id: user10.id)
investment6 = Investment.create!(investment_name: "Achat d'une parcelle de Margaux", punchline: "Les vins de Bordeaux sont mondialement connus et font la gloire de la France sur toutes les tables du monde.", winemaker_name: "Robert", domaine_name: "Château Dauzac", description: "En 2009, les superficies déclarées sont de 38 490 hectares en rouges, 700 ha en clairets, 4.725 ha en rosés et 6.040 ha en blancs.", bio: true, region: "Bordeaux", designation: "Margaux", remuneration: "6 bouteilles de Margaux du domaine", ticket_amount: 15000, investment_total: 150000, share_available: 10, total_share: 10, profitability: 2, winemaker_profile: "Vigneron installé", deferred_remuneration: false, group_id: group1.id, user_id: user8.id)
investment7 = Investment.create!(investment_name: "Achat d'une parcelle de Chateau Yquem", punchline: "Accédez à un domaine d'exception !", winemaker_name: "Bernard Arnauld", domaine_name: "Château d'Yquem", description: "Elevé au rang de Premier Cru Supérieur en 1855, Château d’Yquem est le fruit d’un travail minutieux de la vigne jusqu'au chai. Bénéficiant depuis ses origines d’un terroir exceptionnel, Château d’Yquem raconte l’histoire d’un savoir-faire unique qui se transmet depuis 1593.", bio: true, region: "Bordeaux", designation: "Sauternes", remuneration: "1 bouteille du Château Iquem",ticket_amount: 50000, investment_total: 500000, share_available: 10, total_share: 10, profitability: 2, winemaker_profile: "Vigneron installé", deferred_remuneration: true, group_id: group1.id, user_id: user7.id)
investment8 = Investment.create!(investment_name: "Achat d'une parcelle de Romanée Conti", punchline: "La réputation des grands domaines viticoles en Bourgogne s’est faite dès le règne de Charlemagne.", winemaker_name: "Jean", domaine_name: "Domaine de la Romanée Conti", description: "Les 5 principales zones viticoles sont : le Chablis, la Côte d’Or, la Côte Chalonnaise, Le Mâcon, et le Beaujolais (Morgon).", bio: true, region: "Bourgogne", designation: "Romanée-Conti", remuneration: "1 bouteille du domaine",ticket_amount: 100000, investment_total: 1500000, share_available: 15, total_share: 15, profitability: 3 , winemaker_profile: "Vigneron installé", deferred_remuneration: false, group_id: group1.id, user_id: user7.id)
investment9 = Investment.create!(investment_name: "Achat d'une parcelle d'Hermitage", punchline: "Les 75 pourcents de vins rouges produits à partir de syrah peuvent comporter (à hauteur de 15 pourcents maximum, comme en Côte Rôtie avec le viognier)", winemaker_name: "Maurice", domaine_name: "Domaine du Colombier", description: "Les terroirs sont très divers et chaque parcelle bien spécifique porte un nom bien connu des passionnés de cette appellation de prestige : Greffieux, Méal, Bessards, Rocoules, etc.", bio: false, region: "Vallée du Rhône", designation: "Hermitage", remuneration: "2 cartons de 6 bouteilles du domaine",ticket_amount: 8000, investment_total: 80000, share_available: 10, total_share: 10, profitability: 5, winemaker_profile: "Jeune vigneron", deferred_remuneration: false, group_id: group2.id, user_id: user8.id)
investment10 = Investment.create!(investment_name: "Achat d'une parcelle de Beaujolais", punchline: "Les vins de Bordeaux sont mondialement connus et font la gloire de la France sur toutes les tables du monde.", winemaker_name: "Robert", domaine_name: "domaine du château de Pizay", description: "En 2009, les superficies déclarées sont de 38 490 hectares en rouges, 700 ha en clairets, 4.725 ha en rosés et 6.040 ha en blancs.", bio: true, region: "Beaujolais", designation: "Saint-Amour", remuneration: "6 bouteilles de Saint-Amour du domaine", ticket_amount: 7000, investment_total: 35000, share_available: 5, total_share: 5, profitability: 2, winemaker_profile: "Vigneron installé", deferred_remuneration: false, group_id: group1.id, user_id: user7.id)
investment11 = Investment.create!(investment_name: "Achat d'une parcelle du Chateau Cheval Blanc", punchline: "La réputation des grands domaines viticoles en Bourgogne s’est faite dès le règne de Charlemagne.", winemaker_name: "Jean", domaine_name: "Château Cheval Blanc", description: "Issus d’un terroir unique et d’un savoir-faire d’exception, les grands crus de Château Cheval Blanc écrivent, millésime après millésime, la légende de l’un des plus prestigieux vins de Bordeaux.", bio: true, region: "Bordeaux", designation: "Saint-Emilion Grand Cru", remuneration: "2 magnums du domaine",ticket_amount: 25000, investment_total: 200000, share_available: 8, total_share: 8, profitability: 3 , winemaker_profile: "Vigneron installé", deferred_remuneration: true, group_id: group1.id, user_id: user7.id)
investment12 = Investment.create!(investment_name: "Achat d'une parcelle en Champagne", punchline: "La réputation des grands domaines viticoles en Bourgogne s’est faite dès le règne de Charlemagne.", winemaker_name: "Pierre", domaine_name: "Champagne Delamotte", description: "Issus d’un terroir unique et d’un savoir-faire d’exception, les grands crus de Château Cheval Blanc écrivent, millésime après millésime, la légende de l’un des plus prestigieux vins de Bordeaux.", bio: true, region: "Champagne", designation: "Champagne", remuneration: "2 bouteilles du domaine",ticket_amount: 15000, investment_total: 75000, share_available: 5, total_share: 5, profitability: 3 , winemaker_profile: "Vigneron installé", deferred_remuneration: false, group_id: group1.id, user_id: user8.id)

puts "creation #{Investment.count} investments"


require "open-uri"

file1 = URI.open('https://images.unsplash.com/photo-1559519341-566e7b5ecc70?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80')
investment1.photo.attach(io: file1, filename: 'investment1.png', content_type: 'image/png')
file2 = URI.open('https://images.unsplash.com/photo-1562497261-397e5f16eeb7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80')
investment2.photo.attach(io: file2, filename: 'investment2.png', content_type: 'image/png')
file3 = URI.open('https://images.unsplash.com/photo-1464638681273-0962e9b53566?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80')
investment3.photo.attach(io: file3, filename: 'investment3.png', content_type: 'image/png')
file4 = URI.open('https://images.unsplash.com/photo-1573062337052-54ad1468bb5e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80')
investment4.photo.attach(io: file4, filename: 'investment4.png', content_type: 'image/png')
file5 = URI.open('https://images.unsplash.com/photo-1504279577054-acfeccf8fc52?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1567&q=80')
investment5.photo.attach(io: file5, filename: 'investment5.png', content_type: 'image/png')
file6 = URI.open('https://images.pexels.com/photos/943700/pexels-photo-943700.jpeg?cs=srgb&dl=green-farm-943700.jpg&fm=jpg')
investment6.photo.attach(io: file6, filename: 'investment6.png', content_type: 'image/png')
file7 = URI.open('https://r.lvmh-static.com/uploads/2014/09/yquem_diapo11-1992x1296.jpg')
investment7.photo.attach(io: file7, filename: 'investment7.png', content_type: 'image/png')
file8 = URI.open('https://www.wineinvestment.com/assets/Uploads/blogpage/cf845fa720/croppedimage680368-DRCExterior.jpg')
investment8.photo.attach(io: file8, filename: 'investment8.png', content_type: 'image/png')
file9 = URI.open('https://images.pexels.com/photos/442116/pexels-photo-442116.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500')
investment9.photo.attach(io: file9, filename: 'investment9.png', content_type: 'image/png')
file10 = URI.open('https://www.chateau-pizay.com/media/cache/jadro_resize/rc/Yaa4ocMg1578383135/jadroRoot/medias/5bdc539ce8e8e/pizay022-2.jpg')
investment10.photo.attach(io: file10, filename: 'investment10.png', content_type: 'image/png')
file11 = URI.open('https://r.lvmh-static.com/uploads/2014/10/chateauchevalblanc_diaporama11-1992x1296.jpg')
investment11.photo.attach(io: file11, filename: 'investment11.png', content_type: 'image/png')
file12 = URI.open('https://r.lvmh-static.com/uploads/2014/10/moet-chandon_diapo4new-1944x1296.jpg')
investment12.photo.attach(io: file12, filename: 'investment12.png', content_type: 'image/png')

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

