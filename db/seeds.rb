# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.find_or_initialize_by_email('user@example.com').tap do |u|
  u.password = 'password'
  u.password_confirmation = 'password'
  u.save!
end

posts = [
  { name: 'First Post',  body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque a bibendum diam. Fusce malesuada tellus mauris, a euismod massa posuere quis. Sed cursus eleifend velit aliquam ultrices. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed facilisis turpis leo, quis adipiscing ipsum hendrerit vitae. Interdum et malesuada fames ac ante ipsum primis in faucibus. Quisque id nulla eu felis facilisis placerat. Nulla libero justo, suscipit vitae velit eget, semper porta ante. Proin suscipit nisl lectus, mollis congue neque vehicula sit amet. Quisque volutpat vehicula vestibulum. Praesent eget mattis nisl, non sagittis quam.' },
  { name: 'Second Post', body: 'Praesent eget mattis nisl, non sagittis quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque a bibendum diam. Fusce malesuada tellus mauris, a euismod massa posuere quis. Sed cursus eleifend velit aliquam ultrices. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed facilisis turpis leo, quis adipiscing ipsum hendrerit vitae. Interdum et malesuada fames ac ante ipsum primis in faucibus. Quisque id nulla eu felis facilisis placerat. Nulla libero justo, suscipit vitae velit eget, semper porta ante. Proin suscipit nisl lectus, mollis congue neque vehicula sit amet. Quisque volutpat vehicula vestibulum.' },
  { name: 'Third Post',  body: 'Curabitur non faucibus justo. Praesent in euismod nibh. Nulla orci leo, eleifend ac lacus eget, accumsan volutpat mi. Mauris lectus nisi, elementum eget sagittis in, tempus at ipsum. Integer vehicula semper tortor at varius. Aliquam elit tortor, consectetur nec dignissim vitae, placerat quis lorem. Nunc egestas purus sed libero mollis, consectetur semper urna elementum. Suspendisse sit amet facilisis lectus. Duis tempus pretium tempor.' }
]

posts.each do |attributes|
  Post.find_or_initialize_by_name(attributes[:name]).tap do |p|
    p.body = attributes[:body]
    p.save!
  end
end
