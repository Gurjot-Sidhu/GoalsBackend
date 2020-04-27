# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User.destroy_all
# Goal.destroy_all
# Milestone.destroy_all


bro = User.create(username:"Gurjot",password:"123")
goal = Goal.create(name:"write a book",complete: false ,user_id:1)
gaol2 = Goal.create(name:"buy new car",complete: false ,user_id:1)
milestone = Milestone.create(name:"make a title",complete: false,goal_id:1)
milestone = Milestone.create(name:"deposit 250 in savings",complete: false,goal_id:2)
milestone = Milestone.create(name:"deposit 500",complete: false,goal_id:2)



puts "seed complete"