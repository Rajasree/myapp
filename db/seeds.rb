# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

role1 = Role.find_or_create_by(role: "Director")
role2 = Role.find_or_create_by(role: "Assistant Director")
role3 = Role.find_or_create_by(role: "Member")

(1..5).each do |i|
   User.create_with(email: "director_#{i}@gmail.com", gender: "male", role_id: role1.id).find_or_create_by(name: "Director_#{i}")
end

(1..5).each do |i|
   User.create_with(email: "assistant_director_#{i}@gmail.com", gender: "male", role_id: role2.id).find_or_create_by(name: "Assistant Director_#{i}")
end

(1..10).each do |i|
   User.create_with(email: "assistant_director_#{i}@gmail.com", gender: "male", role_id: role3.id).find_or_create_by(name: "Member_#{i}")
end