# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

JournalEntry.destroy_all
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

activity_card_three = Card.create!(name: "Se faire un bon resto", address: "6 Rue de la Grange Batelière, 75009 Paris", outside: true, active: false)
activity_card_three.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/miam.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_three.save!
activity_card_three.parent = thematic_card
activity_card_three.save

journal_three = JournalEntry.create(user: User.last, card: Card.last)
journal_three.save!

activity_card_four = Card.create!(name: "Faire un pique-nique", address: "1 Rue Botzaris, 75019 Paris", outside: true, active: false)
activity_card_four.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/piquenique.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_four.save!
activity_card_four.parent = thematic_card
activity_card_four.save!

journal_four = JournalEntry.create(user: User.last, card: Card.last)
journal_four.save!


thematic_card2 = Card.new(name: "Marcher prendre l'air")
thematic_card2.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/marcher_prendre_lair.png")), filename: "marcher_prendre_lair.png", content_type: "image/png")
thematic_card2.save


activity_card_one = Card.create!(name: "Se faire une balade", address: "Place de la Concorde, 75001 Paris", outside: true, active: true)
activity_card_one.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/balade.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_one.save!
activity_card_one.parent = thematic_card2
activity_card_one.save!

journal_five = JournalEntry.create(user: User.last, card: Card.last)
journal_five.save!

activity_card_two = Card.create!(name: "Faire du velo", outside: true, active: true)
activity_card_two.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/velo.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_two.save!
activity_card_two.parent = thematic_card2
activity_card_two.save!

journal_six = JournalEntry.create(user: User.last, card: Card.last)
journal_six.save!

activity_card_three = Card.create!(name: "Visiter un musee", address: "1 Rue de la Légion d'Honneur, 75007 Paris", outside: true, active: true)
activity_card_three.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/musee.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_three.save!
activity_card_three.parent = thematic_card2
activity_card_three.save!

journal_seven = JournalEntry.create(user: User.last, card: Card.last)
journal_seven.save!

activity_card_four = Card.create!(name: "Faire un pique-nique", address: "1 Rue Botzaris, 75019 Paris", outside: true, active: false)
activity_card_four.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/piquenique.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_four.save!
activity_card_four.parent = thematic_card2
activity_card_four.save!

journal_eight = JournalEntry.create(user: User.last, card: Card.last)
journal_eight.save!


thematic_card3 = Card.new(name: "Regarder une serie")
thematic_card3.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/regarder_des_series.png")), filename: "regarder_des_series.png", content_type: "image/png")
thematic_card3.save

activity_card_one = Card.create!(name: "After Time (serie trailer)", video: "https://www.youtube.com/watch?v=eIGGKSHMQOM", outside: false, active: false)
activity_card_one.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/serie.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_one.save!
activity_card_one.parent = thematic_card3
activity_card_one.save!

journal_nine = JournalEntry.create(user: User.last, card: Card.last)
journal_nine.save!

activity_card_two = Card.create!(name: "Rick et Morty (trailer)", video: "https://www.youtube.com/watch?v=opRwgY7RDP0", outside: false, active: false)
activity_card_two.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/serie.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_two.save!
activity_card_two.parent = thematic_card3
activity_card_two.save!

journal_ten = JournalEntry.create(user: User.last, card: Card.last)
journal_ten.save!

activity_card_three = Card.create!(name: "Aller au cinema", address: "7 Quai de la Loire, 75019 Paris", outside: true, active: true)
activity_card_three.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/cinema.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_three.save!
activity_card_three.parent = thematic_card3
activity_card_three.save!

journal_eleven = JournalEntry.create(user: User.last, card: Card.last)
journal_eleven.save!

activity_card_four = Card.create!(name: "Les Petites Victoires (film trailer)", video: "https://www.youtube.com/watch?v=bVaetxYZrCk", outside: false, active: false)
activity_card_four.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/serie.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_four.save!
activity_card_four.parent = thematic_card3
activity_card_four.save!

journal_twelve = JournalEntry.create(user: User.last, card: Card.last)
journal_twelve.save!

activity_card_five = Card.create!(name: "Anne with an E (serie trailer)", video: "https://www.youtube.com/watch?v=S5qJXYNNINo", outside: false, active: false)
activity_card_five.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/serie.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_five.save!
activity_card_five.parent = thematic_card3
activity_card_five.save!

journal_thirteen = JournalEntry.create(user: User.last, card: Card.last)
journal_thirteen.save!

activity_card_six = Card.create!(name: "Virgin river (serie trailer)", video: "https://www.youtube.com/watch?v=DMNjH5MlQXc", outside: false, active: false)
activity_card_six.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/serie.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_six.save!
activity_card_six.parent = thematic_card3
activity_card_six.save!

journal_fourteen = JournalEntry.create(user: User.last, card: Card.last)
journal_fourteen.save!

activity_card_seven = Card.create!(name: "Empire of light (film trailer)", video: "https://www.youtube.com/watch?v=3JA3bD5xs-Q", outside: false, active: false)
activity_card_seven.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/serie.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_seven.save!
activity_card_seven.parent = thematic_card3
activity_card_seven.save!

journal_fifteen = JournalEntry.create(user: User.last, card: Card.last)
journal_fifteen.save!

activity_card_eight = Card.create!(name: "Un homme heureux (film trailer)", video: "https://www.youtube.com/watch?v=PeCfMoFx3qc", outside: false, active: false)
activity_card_eight.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/serie.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
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

activity_card_two = Card.create!(name: "Yoga Vinyasa (débutant)", video: "https://www.youtube.com/watch?v=VEFRtZX-f6I", outside: false, active: true)
activity_card_two.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/yoga.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_two.save!
activity_card_two.parent = thematic_card4
activity_card_two.save!

journal_eighteen = JournalEntry.create(user: User.last, card: Card.last)
journal_eighteen.save!

activity_card_three = Card.create!(name: "Yoga Ashtanga (débutant)", video: "https://www.youtube.com/watch?v=Z8In0I1WHFs", outside: false, active: true)
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

activity_card_five = Card.create!(name: "Aller courir", address: "196 quai de Valmy, 75010 Paris", outside: true, active: true)
activity_card_five.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/courir.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_five.save!
activity_card_five.parent = thematic_card4
activity_card_five.save!

journal_twenty_one = JournalEntry.create(user: User.last, card: Card.last)
journal_twenty_one.save!

activity_card_six = Card.create!(name: "Aller à la piscine", address: "32 Rue Edouard Pailleron, 75019 Paris", outside: true, active: true)
activity_card_six.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/piscine.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_six.save!
activity_card_six.parent = thematic_card4
activity_card_six.save!

journal_twenty_two = JournalEntry.create(user: User.last, card: Card.last)
journal_twenty_two.save!


thematic_card5 = Card.new(name: "Siester")
thematic_card5.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/siester.png")), filename: "siester.png", content_type: "image/png")
thematic_card5.save

activity_card_one = Card.create!(name: "Music", playlist: "https://open.spotify.com/playlist/37i9dQZF1DWZd79rJ6a7lp", outside: false, active: false)
activity_card_one.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/music.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_one.save!
activity_card_one.parent = thematic_card5
activity_card_one.save!

journal_twenty_three = JournalEntry.create(user: User.last, card: Card.last)
journal_twenty_three.save!


thematic_card6 = Card.new(name: "Ecouter sa playlist preferee à fond")
thematic_card6.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/ecouter_sa_playlist_prefere.png")), filename: "ecouter_sa_playlist_prefere.png", content_type: "image/png")
thematic_card6.save

activity_card_one = Card.create!(name: "Classic", playlist: "https://open.spotify.com/playlist/1h0CEZCm6IbFTbxThn6Xcs", outside: false, active: false)
activity_card_one.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/music.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_one.save!
activity_card_one.parent = thematic_card6
activity_card_one.save!

journal_twenty_four = JournalEntry.create(user: User.last, card: Card.last)
journal_twenty_four.save!

activity_card_two = Card.create!(name: "POP", playlist:"https://open.spotify.com/playlist/008G1BbvK1NQvbAV8MHvDz", outside: false, active: true)
activity_card_two.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/music.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_two.save!
activity_card_two.parent = thematic_card6
activity_card_two.save!

journal_twenty_six = JournalEntry.create(user: User.last, card: Card.last)
journal_twenty_six.save!

activity_card_three = Card.create!(name: "POP", playlist:"https://open.spotify.com/track/0yLdNVWF3Srea0uzk55zFn", outside: false, active: false)
activity_card_three.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/music.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_three.save!
activity_card_three.parent = thematic_card6
activity_card_three.save!

journal_twenty_seven = JournalEntry.create(user: User.last, card: Card.last)
journal_twenty_seven.save!

activity_card_four = Card.create!(name: "JAZZ", playlist:"https://open.spotify.com/playlist/37i9dQZF1DXe0UXHUfHinR", outside: true, active: true)
activity_card_four.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/music.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_four.save!
activity_card_four.parent = thematic_card6
activity_card_four.save!

journal_twenty_eight = JournalEntry.create(user: User.last, card: Card.last)
journal_twenty_eight.save!

activity_card_six = Card.create!(name: "JAZZ", playlist:"https://open.spotify.com/playlist/37i9dQZF1DXdwTUxmGKrdN", outside: true, active: true)
activity_card_six.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/music.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_six.save!
activity_card_six.parent = thematic_card6
activity_card_six.save!

journal_twenty_nine = JournalEntry.create(user: User.last, card: Card.last)
journal_twenty_nine.save!

activity_card_seven = Card.create!(name: "Meditation", playlist:"https://open.spotify.com/artist/5pDpKXDZXe97W5nPVRQo8A", outside: true, active: true)
activity_card_seven.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/music.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_seven.save!
activity_card_seven.parent = thematic_card6
activity_card_seven.save

journal_thirty = JournalEntry.create(user: User.last, card: Card.last)
journal_thirty.save!

activity_card_eight = Card.create!(name: "Méditation", playlist:"https://open.spotify.com/album/6GMlQBylzCYzGyuTCY0VJE", outside: true, active: false)
activity_card_eight.photo.attach(io: File.open(File.join(Rails.root, "/app/assets/images/music.PNG")), filename: "marcher_prendre_lair.png", content_type: "image/png")
activity_card_eight.save!
activity_card_eight.parent = thematic_card6
activity_card_eight.save

journal_thirty_one = JournalEntry.create(user: User.last, card: Card.last)
journal_thirty_one.save!

puts "cards seed completed"
