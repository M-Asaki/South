class Game < ApplicationRecord
  validates :team_id,   presence: true
  validates :game_date, presence: true
  validates :opponent,  presence: true

  belongs_to :team
  belongs_to :order
end
