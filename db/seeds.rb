# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

JournalEntry.destroy_all
Wishlist.destroy_all
Card.destroy_all
User.destroy_all

alessia = User.new(email: "alessia@viepourrie.com", password: "auroretest", password_confirmation: "auroretest", username: "Alessia", location: "68 avenue parmentier")
olga = User.new(email: "olga@viepourrie.com", password: "auroretest", password_confirmation: "auroretest", username: "Olga", location: "68 avenue parmentier")
martial = User.new(email: "martial@viepourrie.com", password: "auroretest", password_confirmation: "auroretest", username: "Martial", location: "68 avenue parmentier")
aurore = User.new(email: "aurore@viepourrie.com", password: "auroretest", password_confirmation: "auroretest", username: "Aurore", location: "68 avenue parmentier")

alessia.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/alessia.jpeg")), filename: "alessia.jpeg", content_type: "image/png")
alessia.save
olga.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/olga.JPG")), filename: "olga.JPG", content_type: "image/png")
olga.save
martial.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/martial.jpeg")), filename: "martial.jpeg", content_type: "image/png")
martial.save
aurore.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/aurore.JPG")), filename: "aurore.JPG", content_type: "image/png")

aurore.save
puts "users seed completed"

thematic_card = Card.new(name: "Manger des trucs bons")
thematic_card.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/manger_des_trucs_bons.png")), filename: "manger_des_trucs_bons.png", content_type: "image/png")
thematic_card.save!

activity_card_one = Card.create!(name: "Se faire un chocolat chaud", outside: false, active: false)
activity_card_one.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/chocolat.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_one.save!
activity_card_one.parent = thematic_card
activity_card_one.save!

journal_one = JournalEntry.create(user: User.last, card: Card.last)
journal_one.save!


activity_card_two = Card.create!(name: "Manger des bonbons", outside: nil, active: false)
activity_card_two.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/bonbons.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_two.save!
activity_card_two.parent = thematic_card
activity_card_two.save

journal_two = JournalEntry.create(user: User.last, card: Card.last)
journal_two.save!

activity_card_three = Card.create!(name: "Neko Ramen", address: "6 Rue de la Grange Batelière, 75009 Paris", outside: true, active: false)
activity_card_three.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/ramen.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_three.save!
activity_card_three.parent = thematic_card
activity_card_three.save

journal_three = JournalEntry.create(user: User.last, card: Card.last)
journal_three.save!

#A RENOMER
activity_card_three_bis = Card.create!(name: "Theory Burger", address: "11 Bd des Filles du Calvaire, 75003 Paris", outside: true, active: false)
activity_card_three_bis.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/burger.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_three_bis.save!
activity_card_three_bis.parent = thematic_card
activity_card_three_bis.save

journal_three_bis = JournalEntry.create(user: User.last, card: Card.last)
journal_three_bis.save!

activity_card_four_bis = Card.create!(name: "Marcus Pizze", address: "4 Rue Bichat, 75010 Paris", outside: true, active: false)
activity_card_four_bis.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/pizza.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_four_bis.save!
activity_card_four_bis.parent = thematic_card
activity_card_four_bis.save

journal_four_bis = JournalEntry.create(user: User.last, card: Card.last)
journal_four_bis.save!

activity_card_five_bis = Card.create!(name: "VG Pâtisserie", address: "123 Bd Voltaire, 75011 Paris", outside: true, active: false)
activity_card_five_bis.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/patisserie.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_five_bis.save!
activity_card_five_bis.parent = thematic_card
activity_card_five_bis.save

journal_five_bis = JournalEntry.create(user: User.last, card: Card.last)
journal_five_bis.save!

activity_card_six_bis = Card.create!(name: "Chatime", address: "124 Av. de Choisy, 75013 Paris", outside: true, active: false)
activity_card_six_bis.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/bbt.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_six_bis.save!
activity_card_six_bis.parent = thematic_card
activity_card_six_bis.save

journal_six_bis = JournalEntry.create(user: User.last, card: Card.last)
journal_six_bis.save!

##

activity_card_four = Card.create!(name: "Pique-niquer aux Buttes Chaumonts", address: "1 Rue Botzaris, 75019 Paris", outside: true, active: false)
activity_card_four.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/piquenique.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_four.save!
activity_card_four.parent = thematic_card
activity_card_four.save!

journal_four = JournalEntry.create(user: User.last, card: Card.last)
journal_four.save!

## A RENOMMER

activity_card_seven_bis = Card.create!(name: "Pique-niquer au Jardin du Luxembourg", address: "2 rue Auguste-Comte, 75006 Paris", outside: true, active: false)
activity_card_seven_bis.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/piquenique.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_seven_bis.save!
activity_card_seven_bis.parent = thematic_card
activity_card_seven_bis.save!

journal_seven_bis = JournalEntry.create(user: User.last, card: Card.last)
journal_seven_bis.save!

##

thematic_card2 = Card.new(name: "Marcher prendre l'air")
thematic_card2.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/marcher_prendre_lair.png")), filename: "marcher_prendre_lair.png", content_type: "image/png")
thematic_card2.save

activity_card_one = Card.create!(name: "Balade aux Tuilleries", address: "Place de la Concorde, 75001 Paris", outside: true, active: true)
activity_card_one.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/balade.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_one.save!
activity_card_one.parent = thematic_card2
activity_card_one.save!

journal_five = JournalEntry.create(user: User.last, card: Card.last)
journal_five.save!

## A RENOMMER

activity_card_one_bis = Card.create!(name: "Balade au Jardin du Luxembourg", address: "2 rue Auguste-Comte, 75006 Paris", outside: true, active: true)
activity_card_one_bis.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/se_faire_balade.png")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_one_bis.save!
activity_card_one_bis.parent = thematic_card2
activity_card_one_bis.save!

journal_five_bis = JournalEntry.create(user: User.last, card: Card.last)
journal_five_bis.save!

activity_card_two_bis = Card.create!(name: "Balade à Montmartre", address: "35 Rue du Chevalier de la Barre, 75018 Paris", outside: true, active: true)
activity_card_two_bis.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/balade.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_two_bis.save!
activity_card_two_bis.parent = thematic_card2
activity_card_two_bis.save!

journal_six_bis = JournalEntry.create(user: User.last, card: Card.last)
journal_six_bis.save!

##


activity_card_two = Card.create!(name: "Faire du vélo", outside: true, active: true)
activity_card_two.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/velo.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_two.save!
activity_card_two.parent = thematic_card2
activity_card_two.save!

journal_six = JournalEntry.create(user: User.last, card: Card.last)
journal_six.save!

activity_card_three = Card.create!(name: "Musée d'Orsay", address: "1 Rue de la Légion d'Honneur, 75007 Paris", outside: true, active: true)
activity_card_three.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/musee.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_three.save!
activity_card_three.parent = thematic_card2
activity_card_three.save!

journal_seven = JournalEntry.create(user: User.last, card: Card.last)
journal_seven.save!

## A RENOMMER

activity_card_three_bis = Card.create!(name: "Centre Pompidou", address: "Place Georges-Pompidou, 75004 Paris", outside: true, active: true)
activity_card_three_bis.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/musee.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_three_bis.save!
activity_card_three_bis.parent = thematic_card2
activity_card_three_bis.save!

journal_seven_bis = JournalEntry.create(user: User.last, card: Card.last)
journal_seven_bis.save!


activity_card_four_bis = Card.create!(name: "Musée de la vie Romantique", address: "16 Rue Chaptal, 75009 Paris", outside: true, active: true)
activity_card_four_bis.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/musee.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_four_bis.save!
activity_card_four_bis.parent = thematic_card2
activity_card_four_bis.save!

journal_eight_bis = JournalEntry.create(user: User.last, card: Card.last)
journal_eight_bis.save!

##

activity_card_four = Card.create!(name: "Faire un pique-nique", address: "1 Rue Botzaris, 75019 Paris", outside: true, active: false)
activity_card_four.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/piquenique.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_four.save!
activity_card_four.parent = thematic_card2
activity_card_four.save!

journal_eight = JournalEntry.create(user: User.last, card: Card.last)
journal_eight.save!


thematic_card3 = Card.new(name: "Regarder une série")
thematic_card3.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/regarder_des_series.png")), filename: "regarder_des_series.png", content_type: "image/png")
thematic_card3.save

activity_card_one = Card.create!(name: "After Time", video: "https://www.youtube.com/watch?v=eIGGKSHMQOM", outside: false, active: false)
activity_card_one.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/serie.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_one.save!
activity_card_one.parent = thematic_card3
activity_card_one.save!

journal_nine = JournalEntry.create(user: User.last, card: Card.last)
journal_nine.save!

activity_card_two = Card.create!(name: "Rick et Morty", video: "https://www.youtube.com/watch?v=opRwgY7RDP0", outside: false, active: false)
activity_card_two.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/serie2.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_two.save!
activity_card_two.parent = thematic_card3
activity_card_two.save!

journal_ten = JournalEntry.create(user: User.last, card: Card.last)
journal_ten.save!

activity_card_three = Card.create!(name: "Aller au cinéma", address: "7 Quai de la Loire, 75019 Paris", outside: true, active: true)
activity_card_three.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/cinema.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_three.save!
activity_card_three.parent = thematic_card3
activity_card_three.save!

journal_eleven = JournalEntry.create(user: User.last, card: Card.last)
journal_eleven.save!

activity_card_four = Card.create!(name: "Les Petites Victoires", video: "https://www.youtube.com/watch?v=bVaetxYZrCk", outside: false, active: false)
activity_card_four.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/serie1.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_four.save!
activity_card_four.parent = thematic_card3
activity_card_four.save!

journal_twelve = JournalEntry.create(user: User.last, card: Card.last)
journal_twelve.save!

activity_card_five = Card.create!(name: "Anne with an E", video: "https://www.youtube.com/watch?v=S5qJXYNNINo", outside: false, active: false)
activity_card_five.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/serie2.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_five.save!
activity_card_five.parent = thematic_card3
activity_card_five.save!

journal_thirteen = JournalEntry.create(user: User.last, card: Card.last)
journal_thirteen.save!

activity_card_six = Card.create!(name: "Virgin River", video: "https://www.youtube.com/watch?v=DMNjH5MlQXc", outside: false, active: false)
activity_card_six.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/serie3.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_six.save!
activity_card_six.parent = thematic_card3
activity_card_six.save!

journal_fourteen = JournalEntry.create(user: User.last, card: Card.last)
journal_fourteen.save!

activity_card_seven = Card.create!(name: "Empire of Light", video: "https://www.youtube.com/watch?v=3JA3bD5xs-Q", outside: false, active: false)
activity_card_seven.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/serie.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_seven.save!
activity_card_seven.parent = thematic_card3
activity_card_seven.save!

journal_fifteen = JournalEntry.create(user: User.last, card: Card.last)
journal_fifteen.save!

activity_card_eight = Card.create!(name: "Un Homme Heureux", video: "https://www.youtube.com/watch?v=PeCfMoFx3qc", outside: false, active: false)
activity_card_eight.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/serie3.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_eight.save!
activity_card_eight.parent = thematic_card3
activity_card_eight.save!

journal_sixteen = JournalEntry.create(user: User.last, card: Card.last)
journal_sixteen.save!

thematic_card4 = Card.new(name: "Faire du sport")
thematic_card4.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/faire_du_sport.png")), filename: "faire_du_sport.png", content_type: "image/png")
thematic_card4.save

activity_card_one = Card.create!(name: "Hatha Yoga", video: "https://www.youtube.com/watch?v=l3oAT3X1eL0", outside: false, active: true)
activity_card_one.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/yoga.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_one.save!
activity_card_one.parent = thematic_card4
activity_card_one.save!

journal_seventeen = JournalEntry.create(user: User.last, card: Card.last)
journal_seventeen.save!

activity_card_two = Card.create!(name: "Yoga Vinyasa", video: "https://www.youtube.com/watch?v=VEFRtZX-f6I", outside: false, active: true)
activity_card_two.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/yoga.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_two.save!
activity_card_two.parent = thematic_card4
activity_card_two.save!

journal_eighteen = JournalEntry.create(user: User.last, card: Card.last)
journal_eighteen.save!

activity_card_three = Card.create!(name: "Yoga Ashtanga", video: "https://www.youtube.com/watch?v=Z8In0I1WHFs", outside: false, active: true)
activity_card_three.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/yoga.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_three.save!
activity_card_three.parent = thematic_card4
activity_card_three.save!

journal_nineteen = JournalEntry.create(user: User.last, card: Card.last)
journal_nineteen.save!

activity_card_four = Card.create!(name: "Pilates", video: "https://www.youtube.com/watch?v=7ee-itHRGts&t=43s", outside: false, active: true)
activity_card_four.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/pilate.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_four.save!
activity_card_four.parent = thematic_card4
activity_card_four.save!

journal_twenty = JournalEntry.create(user: User.last, card: Card.last)
journal_twenty.save!

activity_card_five = Card.create!(name: "Courir sur au Canal st Martin", address: "196 quai de Valmy, 75010 Paris", outside: true, active: true)
activity_card_five.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/courir.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_five.save!
activity_card_five.parent = thematic_card4
activity_card_five.save!

journal_twenty_one = JournalEntry.create(user: User.last, card: Card.last)
journal_twenty_one.save!

## A RENOMMER

activity_card_five_bis = Card.create!(name: "Courir au parc Montsouris", address: "2 Rue Gazan, 75014 Paris", outside: true, active: true)
activity_card_five_bis.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/courir.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_five_bis.save!
activity_card_five_bis.parent = thematic_card4
activity_card_five_bis.save!

journal_twenty_one_bis = JournalEntry.create(user: User.last, card: Card.last)
journal_twenty_one_bis.save!

##

activity_card_six = Card.create!(name: "Aller à la Piscine Pailleron", address: "32 Rue Edouard Pailleron, 75019 Paris", outside: true, active: true)
activity_card_six.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/piscine.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_six.save!
activity_card_six.parent = thematic_card4
activity_card_six.save!

journal_twenty_two = JournalEntry.create(user: User.last, card: Card.last)
journal_twenty_two.save!

## A RENOMMER

activity_card_six_bis = Card.create!(name: "Aller à la Piscine Josephine Baker", address: "Quai François Mauriac, 75013 Paris", outside: true, active: true)
activity_card_six_bis.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/piscine.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_six_bis.save!
activity_card_six_bis.parent = thematic_card4
activity_card_six_bis.save!

journal_twenty_two_bis = JournalEntry.create(user: User.last, card: Card.last)
journal_twenty_two_bis.save!

##


thematic_card5 = Card.new(name: "Siester")
thematic_card5.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/siester.png")), filename: "siester.png", content_type: "image/png")
thematic_card5.save


activity_card_one = Card.create!(name: "Playlist pour la sieste", playlist: "37i9dQZF1DWZd79rJ6a7lp", outside: false, active: false)
activity_card_one.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/sieste2.png")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_one.save!
activity_card_one.parent = thematic_card5
activity_card_one.save!

journal_twenty_three = JournalEntry.create(user: User.last, card: Card.last)
journal_twenty_three.save!

##### A RENOMMER + ILLU
activity_card_two = Card.create!(name: "Siester avec de l'ASMR orage", playlist: "https://open.spotify.com/episode/18zoyfCK89e09qGGAEAQDH?si=YqqFLX0NTwWTrPrv-WUf7w", outside: false, active: false)
activity_card_two.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/siesteasmr.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_two.save!
activity_card_two.parent = thematic_card5
activity_card_two.save!

journal_twenty_three_bis = JournalEntry.create(user: User.last, card: Card.last)
journal_twenty_three_bis.save!
######

thematic_card6 = Card.new(name: "Écouter sa playlist préférée à fond")
thematic_card6.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/ecouter_sa_playlist_prefere.png")), filename: "ecouter_sa_playlist_prefere.png", content_type: "image/png")
thematic_card6.save

activity_card_one = Card.create!(name: "Playlist Classic", playlist: "1h0CEZCm6IbFTbxThn6Xcs", outside: false, active: false)
activity_card_one.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/music1.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_one.save!
activity_card_one.parent = thematic_card6
activity_card_one.save!

journal_twenty_four = JournalEntry.create(user: User.last, card: Card.last)
journal_twenty_four.save!

activity_card_two = Card.create!(name: "Playlist Pop", playlist:"008G1BbvK1NQvbAV8MHvDz", outside: false, active: true)
activity_card_two.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/music2.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_two.save!
activity_card_two.parent = thematic_card6
activity_card_two.save!

journal_twenty_six = JournalEntry.create(user: User.last, card: Card.last)
journal_twenty_six.save!

activity_card_three = Card.create!(name: "Playlist Méditation", playlist:"37i9dQZF1DWZqd5JICZI0u", outside: false, active: false)
activity_card_three.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/music3.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_three.save!
activity_card_three.parent = thematic_card6
activity_card_three.save!

journal_twenty_seven = JournalEntry.create(user: User.last, card: Card.last)
journal_twenty_seven.save!

activity_card_four = Card.create!(name: "Playlist Jazz", playlist:"37i9dQZF1DXe0UXHUfHinR", outside: false, active: true)
activity_card_four.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/music4.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_four.save!
activity_card_four.parent = thematic_card6
activity_card_four.save!

journal_twenty_eight = JournalEntry.create(user: User.last, card: Card.last)
journal_twenty_eight.save!

activity_card_six = Card.create!(name: "Playlist Jazz", playlist:"37i9dQZF1DXdwTUxmGKrdN", outside: false, active: true)
activity_card_six.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/music2.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_six.save!
activity_card_six.parent = thematic_card6
activity_card_six.save!

journal_twenty_nine = JournalEntry.create(user: User.last, card: Card.last)
journal_twenty_nine.save!

activity_card_seven = Card.create!(name: "Playlist Dance", playlist:"37i9dQZF1EIhIsNBs86Fmu", outside: false, active: true)
activity_card_seven.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/music1.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_seven.save!
activity_card_seven.parent = thematic_card6
activity_card_seven.save

journal_thirty = JournalEntry.create(user: User.last, card: Card.last)
journal_thirty.save!

activity_card_eight = Card.create!(name: "Playlist Douce", playlist:"37i9dQZF1EIcNUtFW3CJZc", outside: false, active: false)
activity_card_eight.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/music4.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_eight.save!
activity_card_eight.parent = thematic_card6
activity_card_eight.save

journal_thirty_one = JournalEntry.create(user: User.last, card: Card.last)
journal_thirty_one.save!

puts "cards seed completed"
