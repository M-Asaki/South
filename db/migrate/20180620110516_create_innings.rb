class CreateInnings < ActiveRecord::Migration[5.2]
  def change
    create_table :innings do |t|
      t.integer :game_id
      t.integer :inning_number
      t.integer :top_score
      t.integer :bottom_score

      t.timestamps
    end
  end
end
