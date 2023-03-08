# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Card.destroy_all
User.destroy_all

alessia = User.new(email: "alessia@viepourrie.com", password: "auroretest", password_confirmation: "auroretest", username: "Alessia", location: "68 avenue parmentier")
olga = User.new(email: "olga@viepourrie.com", password: "auroretest", password_confirmation: "auroretest", username: "Olga", location: "68 avenue parmentier")
martial = User.new(email: "martial@viepourrie.com", password: "auroretest", password_confirmation: "auroretest", username: "Martial", location: "68 avenue parmentier")
aurore = User.new(email: "aurore@viepourrie.com", password: "auroretest", password_confirmation: "auroretest", username: "Aurore", location: "68 avenue parmentier")

alessia.save
olga.save
martial.save
aurore.save
puts "users seed completed"

thematic_card = Card.new(name: "Manger des trucs bons")
thematic_card.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/manger_des_trucs_bons.png")), filename: "manger_des_trucs_bons.png", content_type: "image/png")
thematic_card.save!

activity_card_one = Card.create!(name: "Se faire un chocolat chaud", outside: false, active: false)
# activity_card_two.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/se_faire_balade.png")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_one.save!
activity_card_one.parent = thematic_card
activity_card_one.save!

#JournalEntry.create(user: User.last, card: Card.name("Se faire un chocolat chaud")) DEMANDER A PAUL SI C CA !!

activity_card_two = Card.create!(name: "Manger des bonbons", outside: nil, active: false)
# activity_card_two.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/se_faire_balade.png")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_two.save!
activity_card_two.parent = thematic_card
# photo
activity_card_two.save

activity_card_three = Card.create!(name: "Se faire un bon resto", address: "6 Rue de la Grange Batelière, 75009 Paris", outside: true, active: false)
# activity_card_two.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/se_faire_balade.png")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_three.save!
activity_card_three.parent = thematic_card
# .address/ localisation resto
activity_card_three.save

activity_card_four = Card.create!(name: "Faire un pique-nique", address: "1 Rue Botzaris, 75019 Paris", outside: true, active: false)
# activity_card_two.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/se_faire_balade.png")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_four.save!
activity_card_four.parent = thematic_card
# .address/localization parc
activity_card_four.save!



thematic_card2 = Card.new(name: "Marcher prendre l'air")
thematic_card2.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/marcher_prendre_lair.png")), filename: "marcher_prendre_lair.png", content_type: "image/png")
thematic_card2.save

activity_card_one = Card.create!(name: "Se faire une balade", address: "Place de la Concorde, 75001 Paris", outside: true, active: true)
activity_card_one.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/se_faire_balade.png")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_one.address = "16 avenue de laumière 75019 paris"
activity_card_one.save!
activity_card_one.parent = thematic_card2
activity_card_one.save!
# idees des ilustrastion(tour-eiffel, canal, parc)

activity_card_two = Card.create!(name: "Faire du vélo", outside: true, active: true)
# activity_card_two.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/se_faire_balade.png")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_two.save!
activity_card_two.parent = thematic_card2
# idees des ilustrastion(canal, parc)
activity_card_two.save!


activity_card_three = Card.create!(name: "Visiter un musée", address: "1 Rue de la Légion d'Honneur, 75007 Paris", outside: true, active: true)
# activity_card_two.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/se_faire_balade.png")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_three.save!
activity_card_three.parent = thematic_card2
# user.address localisation musée
activity_card_three.save!

activity_card_four = Card.create!(name: "Faire un pique-nique", address: "1 Rue Botzaris, 75019 Paris", outside: true, active: false)
# activity_card_two.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/se_faire_balade.png")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_four.save!
activity_card_four.parent = thematic_card2
# .address/localization parc
activity_card_four.save!



thematic_card3 = Card.new(name: "Regarder une série")
thematic_card3.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/regarder_des_series.png")), filename: "regarder_des_series.png", content_type: "image/png")
thematic_card3.save

activity_card_one = Card.create!(name: "After Time (serie trailer)", video: "https://www.youtube.com/watch?v=eIGGKSHMQOM", outside: false, active: false)
# activity_card_two.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/se_faire_balade.png")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_one.save!
activity_card_one.parent = thematic_card3
activity_card_one.save!

activity_card_two = Card.create!(name: "Rick et Morty (trailer)", video: "https://www.youtube.com/watch?v=opRwgY7RDP0", outside: false, active: false)
activity_card_two.parent = thematic_card3
activity_card_two.save!

activity_card_three = Card.create!(name: "Aller au cinéma", address: "7 Quai de la Loire, 75019 Paris", outside: true, active: true)
activity_card_three.parent = thematic_card3
# address
activity_card_three.save!

activity_card_four = Card.create!(name: "Les Petites Victoires (film trailer)", video: "https://www.youtube.com/watch?v=bVaetxYZrCk", outside: false, active: false)
activity_card_four.parent = thematic_card3
activity_card_four.save!

activity_card_five = Card.create!(name: "Anne with an E (serie trailer)", video: "https://www.youtube.com/watch?v=S5qJXYNNINo", outside: false, active: false)
# activity_card_two.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/se_faire_balade.png")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_five.save!
activity_card_five.parent = thematic_card3
activity_card_five.save!

activity_card_six = Card.create!(name: "Virgin river (serie trailer)", video: "https://www.youtube.com/watch?v=DMNjH5MlQXc", outside: false, active: false)
# activity_card_two.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/se_faire_balade.png")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_six.save!
activity_card_six.parent = thematic_card3
activity_card_six.save!

activity_card_seven = Card.create!(name: "Empire of light (film trailer)", video: "https://www.youtube.com/watch?v=3JA3bD5xs-Q", outside: false, active: false)
# activity_card_two.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/se_faire_balade.png")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_seven.save!
activity_card_seven.parent = thematic_card3
activity_card_seven.save!

activity_card_eight = Card.create!(name: "Un homme heureux (film trailer)", video: "https://www.youtube.com/watch?v=PeCfMoFx3qc", outside: false, active: false)
# activity_card_two.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/se_faire_balade.png")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_eight.save!
activity_card_eight.parent = thematic_card3
activity_card_eight.save!



thematic_card4 = Card.new(name: "Faire du sport")
thematic_card4.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/faire_du_sport.png")), filename: "faire_du_sport.png", content_type: "image/png")
thematic_card4.save

activity_card_one = Card.create!(name: "Hatha Yoga", video: "https://www.youtube.com/watch?v=l3oAT3X1eL0", outside: false, active: true)
# activity_card_two.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/se_faire_balade.png")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_one.save!
activity_card_one.parent = thematic_card4
activity_card_one.save!

activity_card_two = Card.create!(name: "Yoga Vinyasa (débutant)", video: "https://www.youtube.com/watch?v=VEFRtZX-f6I", outside: false, active: true)
# activity_card_two.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/se_faire_balade.png")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_two.save!
activity_card_two.parent = thematic_card4
activity_card_two.save!

activity_card_three = Card.create!(name: "Yoga Ashtanga (débutant)", video: "https://www.youtube.com/watch?v=Z8In0I1WHFs", outside: false, active: true)
# activity_card_two.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/se_faire_balade.png")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_three.save!
activity_card_three.parent = thematic_card4
activity_card_three.save!

activity_card_four = Card.create!(name: "Pilates", video: "https://www.youtube.com/watch?v=7ee-itHRGts&t=43s", outside: false, active: true)
# activity_card_two.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/se_faire_balade.png")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_four.save!
activity_card_four.parent = thematic_card4
activity_card_four.save!

activity_card_five = Card.create!(name: "Aller courir", address: "196 quai de Valmy, 75010 Paris", outside: true, active: true)
# activity_card_two.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/se_faire_balade.png")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_five.save!
activity_card_five.parent = thematic_card4
# address
activity_card_five.save!

activity_card_six = Card.create!(name: "Aller à la piscine", address: "32 Rue Edouard Pailleron, 75019 Paris", outside: true, active: true)
# activity_card_two.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/se_faire_balade.png")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_six.save!
activity_card_six.parent = thematic_card4
# address
activity_card_six.save!


thematic_card5 = Card.new(name: "Siester")
thematic_card5.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/siester.png")), filename: "siester.png", content_type: "image/png")
thematic_card5.save

activity_card_one = Card.create!(name: "Music", playlist: "https://open.spotify.com/playlist/37i9dQZF1DWZd79rJ6a7lp", outside: false, active: false)
# activity_card_two.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/se_faire_balade.png")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_one.save!
activity_card_one.parent = thematic_card5
activity_card_one.save!



thematic_card6 = Card.new(name: "Ecouter sa playlist préférée à fond")
thematic_card6.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/ecouter_sa_playlist_prefere.png")), filename: "ecouter_sa_playlist_prefere.png", content_type: "image/png")
thematic_card6.save

activity_card_one = Card.create!(name: "Classic", playlist: "https://open.spotify.com/playlist/1h0CEZCm6IbFTbxThn6Xcs", outside: false, active: true)
# activity_card_two.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/se_faire_balade.png")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_one.save!
activity_card_one.parent = thematic_card6
activity_card_one.save!

activity_card_two = Card.create!(name: "POP", playlist:"https://open.spotify.com/playlist/008G1BbvK1NQvbAV8MHvDz", outside: false, active: true)
# activity_card_two.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/se_faire_balade.png")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_two.save!
activity_card_two.parent = thematic_card6
activity_card_two.save!

activity_card_three = Card.create!(name: "POP", playlist:"https://open.spotify.com/track/0yLdNVWF3Srea0uzk55zFn", outside: false, active: true)
# activity_card_two.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/se_faire_balade.png")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_three.save!
activity_card_three.parent = thematic_card6
activity_card_three.save!

activity_card_four = Card.create!(name: "JAZZ", playlist:"https://open.spotify.com/playlist/37i9dQZF1DXe0UXHUfHinR", outside: true, active: true)
# activity_card_two.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/se_faire_balade.png")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_four.save!
activity_card_four.parent = thematic_card6
activity_card_four.save!

activity_card_six = Card.create!(name: "JAZZ", playlist:"https://open.spotify.com/playlist/37i9dQZF1DXdwTUxmGKrdN", outside: true, active: true)
# activity_card_two.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/se_faire_balade.png")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_six.save!
activity_card_six.parent = thematic_card6
activity_card_six.save!

activity_card_seven = Card.create!(name: "Méditation", playlist:"https://open.spotify.com/artist/5pDpKXDZXe97W5nPVRQo8A", outside: true, active: true)
# activity_card_two.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/se_faire_balade.png")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_seven.save!
activity_card_seven.parent = thematic_card6
activity_card_seven.save

activity_card_eight = Card.create!(name: "Méditation", playlist:"https://open.spotify.com/album/6GMlQBylzCYzGyuTCY0VJE", outside: true, active: true)
# activity_card_two.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/se_faire_balade.png")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_eight.save!
activity_card_eight.parent = thematic_card6
activity_card_eight.save

puts "cards seed completed"
