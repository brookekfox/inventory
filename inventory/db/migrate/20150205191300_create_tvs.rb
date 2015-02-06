class CreateTvs < ActiveRecord::Migration
  def change
    create_table :tvs do |t|
      t.string :title
      t.integer :season
      t.integer :year
      t.string :show_runner
      t.string :network
      t.string :format
      t.boolean :loaned_out, default: false

      t.timestamps
    end
  end
end
