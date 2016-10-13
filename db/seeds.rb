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

u = User.new(name: "kaminari", email: "kaminari@example.com")
  u.password = 'kaminari'
  u.save!(validate: false)

1000.times do |i|
   k = User.find(u.id)
   micropost = k.microposts.build(content: "コメント#{i}")
   micropost.save
end