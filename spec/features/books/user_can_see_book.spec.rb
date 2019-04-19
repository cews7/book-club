require 'rails_helper'
require 'pry'
describe "when user visits /books/:id" do
  before(:all) do
    @book = Book.create(id: 1, title: "New Title", author: "New Author", page_count: 20, year_published: 1990)
    @book_two = Book.create(id: 2, title: "second title", author: "second author", page_count: 20, year_published: 1990)
    visit book_path(@book)
  end

  it "he sees book attributes" do
    expect(@book).to have_attributes(
      :title => "New Title",
      :author => "New Author",
      :page_count => 20,
      :year_published => 1990)
    expect(@book.page_count).to be_a(Integer)
    expect(@book.title).to be_a(String)
  end

  it "book title and author are formatted correctly" do
    expect(@book_two.title).to eq("Second Title")
    expect(@book_two.author).to eq("Second Author")
  end
end
