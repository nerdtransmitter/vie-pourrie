# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Card.destroy_all

thematic_card = Card.create(name: "Manger des trucs bons")
activity_card_one = Card.create(name: "Se faire un chocolat chaud", outside: false, active: false)
activity_card_one.parent = thematic_card
activity_card_one.save
activity_card_two = Card.create(name: "Manger des bonbons", outside: nil, active: false)
activity_card_two.parent = thematic_card
activity_card_two.save
activity_card_three = Card.create(name: "Se faire un bon resto", outside: true, active: false)
activity_card_three.parent = thematic_card
activity_card_three.save
activity_card_four = Card.create(name: "Faire un pic-nique", outside: true, active: false)
activity_card_four.parent = thematic_card
activity_card_four.save
