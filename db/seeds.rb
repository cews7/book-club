# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Book.destroy_all

Book.create!([{
    title: "Book One",
    page_count: 10,
    author: "Author One",
    year_published: 2019
  },
  {
    title: "Book Two",
    page_count: 20,
    author: "Author Two",
    year_published: 2019
  },
  {
    title: "Book Three",
    page_count: 30,
    author: "Author Three",
    year_published: 2019
  },
  {
    title: "Book Four",
    page_count: 40,
    author: "Author Four",
    year_published: 2019
  }])

  p "Created #{Book.count} books"
