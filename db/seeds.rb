# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([{name: 'Erin Scherl', email: 'scherler@grinnell.edu', password:'J0hn@nderson', password_confirmation'J0hn@nderson'},
            {name: 'Test User', email: 'test@email.com', password:'123456', password_confirmation'123456'}])