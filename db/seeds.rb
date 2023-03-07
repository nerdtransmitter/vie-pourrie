# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Card.destroy_all

thematic_card = Card.create!(name: "Manger des trucs bons")
thematic_card.photo.attach(io: file, filename: "manger_des_trucs_bons.png", content_type: "image/png")
activity_card_one = Card.create!(name: "Se faire un chocolat chaud", outside: false, active: false)
activity_card_one.parent = thematic_card
# photo
activity_card_one.save

activity_card_two = Card.create!(name: "Manger des bonbons", outside: nil, active: false)
activity_card_two.parent = thematic_card
# photo
activity_card_two.save

activity_card_three = Card.create!(name: "Se faire un bon resto", outside: true, active: false)
activity_card_three.parent = thematic_card
# .address/ localisation resto
activity_card_three.save

activity_card_four = Card.create!(name: "Faire un pic-nique", outside: true, active: false)
activity_card_four.parent = thematic_card
# .address/localization parc
activity_card_four.save



thematic_card2 = Card.create!(name: "Marcher prendre l'air")
thematic_card2.photo.attach(io: file, filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_one = Card.create!(name: "Se faire balade", outside: true, active: true)
activity_card_one.parent = thematic_card2
# idees des ilustrastion(tour-eiffel, canal, parc)
activity_card_one.save

activity_card_two = Card.create!(name: "Faire du Velo", outside: true, active: true)
activity_card_two.parent = thematic_card2
# idees des ilustrastion(canal, parc)
activity_card_two.save

activity_card_three = Card.create!(name: "Visiter un Musée", outside: true, active: true)
activity_card_three.parent = thematic_card2
# user.address localisation musée
activity_card_three.save

activity_card_four = Card.create!(name: "Faire un pic-nique", outside: true, active: false)
activity_card_four.parent = thematic_card2
# .address/localization parc
activity_card_four.save



thematic_card3 = Card.create!(name: "Regarder une serie")
thematic_card3.photo.attach(io: file, filename: "regarder_des_series.png", content_type: "image/png")
activity_card_one = Card.create!(name: "After Time (serie trailer)", video: "https://www.youtube.com/watch?v=eIGGKSHMQOM", outside: false, active: false)
activity_card_one.parent = thematic_card3
activity_card_one.save

activity_card_one = Card.create!(name: "Anne with an E (serie trailer)", video: "https://www.youtube.com/watch?v=S5qJXYNNINo", outside: false, active: false)
activity_card_one.parent = thematic_card3
activity_card_one.save

activity_card_one = Card.create!(name: "Virgin river (serie trailer)", video: "https://www.youtube.com/watch?v=DMNjH5MlQXc", outside: false, active: false)
activity_card_one.parent = thematic_card3
activity_card_one.save

activity_card_two = Card.create!(name: "Rick et Morty (trailer)", video: "https://www.youtube.com/watch?v=opRwgY7RDP0", outside: false, active: false)
activity_card_two.parent = thematic_card3
activity_card_two.save

activity_card_three = Card.create!(name: "Cinema", outside: true, active: true)
activity_card_three.parent = thematic_card3
# address
activity_card_three.save

activity_card_four = Card.create!(name: "Les Petites Victoires (film trailer)", video: "https://www.youtube.com/watch?v=bVaetxYZrCk", outside: false, active: false)
activity_card_four.parent = thematic_card3
activity_card_four.save

activity_card_four = Card.create!(name: "Empire of light (film trailer)", video: "https://www.youtube.com/watch?v=3JA3bD5xs-Q", outside: false, active: false)
activity_card_four.parent = thematic_card3
activity_card_four.save

activity_card_four = Card.create!(name: "Un homme heureux (film trailer)", video: "https://www.youtube.com/watch?v=PeCfMoFx3qc", outside: false, active: false)
activity_card_four.parent = thematic_card3
activity_card_four.save



thematic_card4 = Card.create!(name: "Faire du Sport")
thematic_card4.photo.attach(io: file, filename: "faire_du_sport.png", content_type: "image/png")
activity_card_one = Card.create!(name: "Hatha yoga", video: "https://www.youtube.com/watch?v=l3oAT3X1eL0", outside: false, active: true)
activity_card_one.parent = thematic_card4
activity_card_one.save

activity_card_one = Card.create!(name: "Yoga Vinyasa (débutant)", video: "https://www.youtube.com/watch?v=VEFRtZX-f6I", outside: false, active: true)
activity_card_one.parent = thematic_card4
activity_card_one.save

activity_card_one = Card.create!(name: "Yoga Ashtanga (débutant)", video: "https://www.youtube.com/watch?v=Z8In0I1WHFs", outside: false, active: true)
activity_card_one.parent = thematic_card4
activity_card_one.save

activity_card_two = Card.create!(name: "Pilates", video: "https://www.youtube.com/watch?v=7ee-itHRGts&t=43s", outside: false, active: true)
activity_card_two.parent = thematic_card4
activity_card_two.save

activity_card_three = Card.create!(name: "Courir", outside: true, active: true)
activity_card_three.parent = thematic_card4
# address
activity_card_three.save

activity_card_four = Card.create!(name: "Piscine", outside: true, active: true)
activity_card_four.parent = thematic_card4
# address
activity_card_four.save




thematic_card5 = Card.create!(name: "Sieste")
thematic_card5.photo.attach(io: file, filename: "siester.png", content_type: "image/png")
activity_card_one = Card.create!(name: "Music", playlist: "https://open.spotify.com/playlist/37i9dQZF1DWZd79rJ6a7lp", outside: false, active: false)
activity_card_one.parent = thematic_card5
activity_card_one.save



thematic_card6 = Card.create!(name: "Ecoute Sa Playlist Préférée à Fond")
thematic_card6.photo.attach(io: file, filename: "ecouter_sa_playlist_prefere.png", content_type: "image/png")
activity_card_one = Card.create!(name: "Classic", playlist: "https://open.spotify.com/playlist/1h0CEZCm6IbFTbxThn6Xcs", outside: false, active: true)
activity_card_one.parent = thematic_card6
activity_card_one.save

activity_card_two = Card.create!(name: "POP", playlist:"https://open.spotify.com/playlist/008G1BbvK1NQvbAV8MHvDz", outside: false, active: true)
activity_card_two.parent = thematic_card6
activity_card_two.save

activity_card_two = Card.create!(name: "POP", playlist:"https://open.spotify.com/track/0yLdNVWF3Srea0uzk55zFn", outside: false, active: true)
activity_card_two.parent = thematic_card6
activity_card_two.save

activity_card_three = Card.create!(name: "JAZZ", playlist:"https://open.spotify.com/playlist/37i9dQZF1DXe0UXHUfHinR", outside: true, active: true)
activity_card_three.parent = thematic_card6
activity_card_three.save

activity_card_three = Card.create!(name: "JAZZ", playlist:"https://open.spotify.com/playlist/37i9dQZF1DXdwTUxmGKrdN", outside: true, active: true)
activity_card_three.parent = thematic_card6
activity_card_three.save

activity_card_four = Card.create!(name: "Méditation", playlist:"https://open.spotify.com/artist/5pDpKXDZXe97W5nPVRQo8A", outside: true, active: true)
activity_card_four.parent = thematic_card6
activity_card_four.save

activity_card_four = Card.create!(name: "Méditation", playlist:"https://open.spotify.com/album/6GMlQBylzCYzGyuTCY0VJE", outside: true, active: true)
activity_card_four.parent = thematic_card6
activity_card_four.save
