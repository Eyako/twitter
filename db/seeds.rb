# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
(1..20).each do |i|
  u = User.new(name: "test#{i}", email: "test#{i}@example.com")
  u.password = '111111'
  u.save!(validate: false)
end

Relationship.create(follower_id: 1, followed_id: 2)
Relationship.create(follower_id: 1, followed_id: 3)
Relationship.create(follower_id: 1, followed_id: 4)
Relationship.create(follower_id: 2, followed_id: 1)
Relationship.create(follower_id: 3, followed_id: 1)

# (1..20).each do |i|
#     u = User.find(i)
#     u2= User.find(i+1)
#     u.follow(u2)
#   end