# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
Task.delete_all

Task.create(name: 'lessive', description: 'aller au carrefour market')
Task.create(name: 'acheter des sacs poubelles', description: 'aller au carrefour market')
Task.create(name: 'descendre les poubelles', description: 'descendre à la cave')
