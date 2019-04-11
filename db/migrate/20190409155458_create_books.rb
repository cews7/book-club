class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :page_count
      t.string :author
      t.integer :year_published

      t.timestamps null: false
    end
  end
end
