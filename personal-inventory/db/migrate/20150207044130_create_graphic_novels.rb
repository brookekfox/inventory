class CreateGraphicNovels < ActiveRecord::Migration
  def change
    create_table :graphic_novels do |t|
      t.string :title
      t.string :author
      t.float :number
      t.string :publisher
      t.boolean :loaned_out
      t.integer :user_id

      t.timestamps
    end
  end
end
