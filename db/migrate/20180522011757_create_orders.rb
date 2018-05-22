class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :game_id
      t.integer :first_batter
      t.string :first_batter_position
      t.integer :second_batter
      t.string :second_batter_position
      t.integer :third_batter
      t.string :third_batter_position
      t.integer :fourth_batter
      t.string :fourth_batter_position
      t.integer :fifth_batter
      t.string :fifth_batter_position
      t.integer :sixth_batter
      t.string :sixth_batter_position
      t.integer :seventh_batter
      t.string :seventh_batter_position
      t.integer :eighth_batter
      t.string :eighth_batter_position
      t.integer :ninth_batter
      t.string :ninth_batter_position

      t.timestamps
    end
  end
end
