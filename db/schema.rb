# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20190422193733) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "authors", force: :cascade do |t|
    t.string  "name"
    t.integer "book_id"
    t.index ["book_id"], name: "index_authors_on_book_id", using: :btree
  end

  create_table "books", force: :cascade do |t|
    t.string   "title"
    t.integer  "page_count"
    t.integer  "year_published"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "author_id"
    t.index ["author_id"], name: "index_books_on_author_id", using: :btree
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "rating"
    t.integer "book_id"
    t.integer "user_id"
    t.index ["book_id"], name: "index_reviews_on_book_id", using: :btree
    t.index ["user_id"], name: "index_reviews_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "authors", "books"
  add_foreign_key "books", "authors"
  add_foreign_key "reviews", "books"
  add_foreign_key "reviews", "users"
end
