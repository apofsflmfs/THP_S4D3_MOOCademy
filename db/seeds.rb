# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do |index|
  Course.create(title: Faker::DumbAndDumber.character, description: Faker::DumbAndDumber.quote)
end

100.times do |index|
  Lesson.create(title: Faker::DumbAndDumber.actor, body: Faker::DumbAndDumber.quote, course_id: rand(1..11))
end
