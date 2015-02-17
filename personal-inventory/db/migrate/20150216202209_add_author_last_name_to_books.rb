class AddAuthorLastNameToBooks < ActiveRecord::Migration
  def change
    add_column :books, :author_last, :string
  end
end
