class CreateGraphicNovels < ActiveRecord::Migration
  def change
    create_table :graphic_novels do |t|
      t.string :title
      t.string :author
      t.integer :number
      t.string :location
      t.boolean :loaned_out

      t.timestamps
    end
  end
end
