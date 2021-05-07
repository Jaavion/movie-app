# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

movie = Movie.create(title: 'Catch me if you can', year:2001, plot: "guy want to finesse the system")
movie = Movie.create(title: 'The Wolf of Wall Street', year: 2018, plot: "trading stocks" )