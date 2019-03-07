# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |blog|
  Blog.create(title: "Blog number #{blog + 1}",
               body: 'Lorem ipsum dolor sit amet, consectetur
                      adipisicing elit, sed do eiusmod tempor
                      incididunt ut labore et dolore magna aliqua.
                      Ut enim ad minim veniam, quis nostrud exercitation ullamco
                      laboris nisi ut aliquip ex ea commodo consequat.
                      Duis aute irure dolor in reprehenderit in voluptate velit
                      esse cillum dolore eu fugiat nulla pariatur.
                      Excepteur sint occaecat cupidatat non proident,
                      sunt in culpa qui officia deserunt mollit anim id
                      est laborum.')
end

puts '##### Added 10 blog posts ######'

5.times do |portfol|
  Portfol.create(title: "portfol #{portfol + 1}",
                 subtitle: "ruby on rails #{portfol + 1}",
                 body: 'Lorem ipsum dolor sit amet, consectetur
                        adipisicing elit, sed do eiusmod tempor
                        incididunt ut labore et dolore magna aliqua.
                        Ut enim ad minim veniam, quis nostrud exercitation ullamco
                        laboris nisi ut aliquip ex ea commodo consequat.
                        Duis aute irure dolor in reprehenderit in voluptate velit
                        esse cillum dolore eu fugiat nulla pariatur.
                        Excepteur sint occaecat cupidatat non proident,
                        sunt in culpa qui officia deserunt mollit anim id
                        est laborum.',
                  main_image: 'https://via.placeholder.com/350x150',
                  thumb_image: 'https://via.placeholder.com/200x80',
                  url_address: 'https://www.google.com')
end


puts '##### 5 Portfolio item has created #####'

3.times do |technology|
  Technology.create(
    name: "Technology #{technology}",
    portfol_id: Portfol.last.id
  )
end

puts '###### 3 technology created!'

5.times do |topic|
  Topic.create(name: 'Ruby on Rails',
               blog_id: Blog.first.id)
end

puts '##### Add 5 Topics #####'

7.times do |skill|
  Skill.create(title: "Skill Number #{skill + 1}",
               percent_utilize: 30)
end


puts '##### 7 Skill set has been added ######'
