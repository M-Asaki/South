class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.integer :team_id
      t.datetime :game_date
      t.string :opponent

      t.timestamps
    end
  end
end
