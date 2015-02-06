class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :year
      t.integer :pages
      t.string :genre
      t.boolean :loaned_out

      t.timestamps
    end
  end
end
