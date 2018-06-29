class AddBottomScoreImageToGames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :bottom_score_image, :string
  end
end
