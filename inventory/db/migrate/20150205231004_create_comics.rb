class CreateComics < ActiveRecord::Migration
  def change
    create_table :comics do |t|
      t.string :title
      t.integer :number
      t.string :location
      t.boolean :loaned_out

      t.timestamps
    end
  end
end
