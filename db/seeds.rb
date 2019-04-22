# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Author.destroy_all
Book.destroy_all

10.times do
  author =
  Author.create!(
    name: Faker::Name.unique.name,
  )
  author.books.create(
    title: Faker::Book.unique.title,
    page_count: Faker::Number.number(3),
    year_published: Faker::Number.number(4))

  if author.id % 4 == 0
    author.books.create(
      title: Faker::Book.unique.title,
      page_count: Faker::Number.number(3),
      year_published: Faker::Number.number(4))
  end
end

p "Created #{Book.count} books and #{Author.count} authors"
