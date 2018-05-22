class Order < ApplicationRecord
  validates :game_id, presence: true
  validates :first_batter, presence: true
  validates :first_batter_position, presence: true
  validates :second_batter, presence: true
  validates :second_batter_position, presence: true
  validates :third_batter, presence: true
  validates :third_batter_position, presence: true
  validates :fourth_batter, presence: true
  validates :fourth_batter_position, presence: true
  validates :fifth_batter, presence: true
  validates :fifth_batter_position, presence: true
  validates :sixth_batter, presence: true
  validates :sixth_batter_position, presence: true
  validates :seventh_batter, presence: true
  validates :seventh_batter_position, presence: true
  validates :eighth_batter, presence: true
  validates :eighth_batter_position, presence: true
  validates :ninth_batter, presence: true
  validates :ninth_batter_position, presence: true

  belongs_to :game
end
