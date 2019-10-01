# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Group.destroy_all
User.destroy_all
group1 = Group.new()
group1.save!
#Creation des invites
lisa = User.new(email: "lisango.e@gmail.com", password:"123456", first_name:"Lisa", last_name: "Ngo", phone:"0786454341", group: group1)
lisa.save!
sara = User.new(email: "sarahngo91@gmail.com", password:"123456", first_name:"Sarah", last_name: "Ngo", phone:"0659065320", group: group1)
sara.save!
