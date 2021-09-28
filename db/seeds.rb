# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

sentence1 = Sentence.create(description: "Apple is looking at buying U.K. startup for $1billion")

sentence1.entities.create(text:"Apple", text_type: "ORG")
sentence1.entities.create(text:"U.K.", text_type: "GPE")
sentence1.entities.create(text:"$1billion", text_type: "MONEY")


sentence2 = Sentence.create(description: "Regional_funds with exposure to United_States and outperform equity_market over 3year")

sentence2.entities.create(text:"Regional_funds", text_type: "THEME")
sentence2.entities.create(text:"United_States", text_type: "GPE")
sentence2.entities.create(text:"equity_market", text_type: "THEME")
sentence2.entities.create(text:"3year", text_type: "TIME")