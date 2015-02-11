class CreateComics < ActiveRecord::Migration
  def change
    create_table :comics do |t|
      t.string :title
      t.float :number
      t.string :publisher
      t.string :comic_box
      t.boolean :loaned_out

      t.timestamps
    end
  end
end
