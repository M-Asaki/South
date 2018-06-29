class BatterScore < ApplicationRecord
  belongs_to :game
  belongs_to :member
  has_many :records
end
