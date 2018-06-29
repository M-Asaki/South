class CreateBatterScores < ActiveRecord::Migration[5.2]
  def change
    create_table :batter_scores do |t|
      t.integer :member_id
      t.integer :game_id
      t.integer :hit_point
      t.integer :steal
      t.integer :score

      t.timestamps
    end
  end
end
