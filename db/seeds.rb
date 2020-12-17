# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Party.create(name: "Natalie", date: "2020-12-17", budget: 100.00, private: false)
Party.create(name: "Alicia", date: "2020-12-18", budget: 150.75, private: true)
Party.create(name: "Chay", date: "2020-12-19", budget: 200.25, private: false)