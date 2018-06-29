class AddTopScoreImageToGames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :top_score_image, :string
  end
end
