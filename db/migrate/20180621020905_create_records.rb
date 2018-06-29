class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.integer :batter_score_id
      t.string :hitting_direction
      t.string :result
      t.integer :batting_number

      t.timestamps
    end
  end
end
