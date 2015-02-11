class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :year
      t.string :director
      t.string :writer
      t.string :format
      t.integer :rotten_tomatoes
      t.boolean :loaned_out, default: false

      t.timestamps
    end
  end
end
