# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Card.destroy_all

thematic_card = Card.create!(name: "Manger des trucs bons")
# .photos.attach(io: file, filename: "unicorn.png", content_type: "image/png")
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
# .photos.attach(io: file, filename: "unicorn.png", content_type: "image/png")
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
# .photos.attach(io: file, filename: "unicorn.png", content_type: "image/png")
activity_card_one = Card.create!(name: "nom de la serie", outside: false, active: false)
activity_card_one.parent = thematic_card3
# trailer serie triste
activity_card_one.save

activity_card_three = Card.create!(name: "nom de serie", outside: false, active: false)
activity_card_three.parent = thematic_card3
# trailer serie comedie
activity_card_three.save

activity_card_two = Card.create!(name: "Cinema", outside: true, active: true)
activity_card_two.parent = thematic_card3
# address 
activity_card_two.save

activity_card_four = Card.create!(name: "nom du film", outside: false, active: false)
activity_card_four.parent = thematic_card3
# trailer film motivant
activity_card_four.save




thematic_card4 = Card.create!(name: "Faire du Sport")
# .photos.attach(io: file, filename: "unicorn.png", content_type: "image/png")
activity_card_one = Card.create!(name: "Yoga", outside: false, active: true)
activity_card_one.parent = thematic_card4
# video youtube
activity_card_one.save

activity_card_two = Card.create!(name: "Pilate", outside: false, active: true)
activity_card_two.parent = thematic_card4
# video
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
# .photos.attach(io: file, filename: "unicorn.png", content_type: "image/png")
activity_card_one = Card.create!(name: "Music", outside: false, active: false)
activity_card_one.parent = thematic_card5
# playlist
activity_card_one.save


thematic_card6 = Card.create!(name: "Ecoute Sa Playlist Préférée à Fond")
# card.photo.attach(io: file, filename: "unicorn.png", content_type: "image/png")
activity_card_one = Card.create!(name: "classic", outside: false, active: true)
activity_card_one.parent = thematic_card6
# playlist
activity_card_one.save

activity_card_two = Card.create!(name: "pop", outside: false, active: true)
activity_card_two.parent = thematic_card6
# playlist
activity_card_two.save

activity_card_three = Card.create!(name: "jazz", outside: true, active: true)
activity_card_three.parent = thematic_card6
# playlist
activity_card_three.save

activity_card_four = Card.create!(name: "meditation", outside: true, active: true)
activity_card_four.parent = thematic_card6
# playlist
activity_card_four.save
