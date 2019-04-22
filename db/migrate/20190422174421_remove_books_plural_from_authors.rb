class RemoveBooksPluralFromAuthors < ActiveRecord::Migration[5.0]
  def change
    remove_column :authors, :books_id
  end
end
