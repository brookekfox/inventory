class CreateTvSeasons < ActiveRecord::Migration
  def change
    create_table :tv_seasons do |t|
      t.string :title
      t.integer :season
      t.integer :year
      t.string :show_runner
      t.string :network
      t.string :format
      t.boolean :loaned_out
      t.integer :user_id

      t.timestamps
    end
  end
end
