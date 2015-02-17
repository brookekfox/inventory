class AddAuthorFirstNameToBooks < ActiveRecord::Migration
  def change
    add_column :books, :author_first, :string
  end
end
