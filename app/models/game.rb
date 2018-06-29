class Game < ApplicationRecord
  validates :team_id,   presence: true
  validates :game_date, presence: true
  validates :opponent,  presence: true

  belongs_to :team
  has_one :order
  has_many :innings
  has_many :batter_scores

  mount_uploader :top_score_image, ImageUploader
  mount_uploader :bottom_score_image, ImageUploader

end
