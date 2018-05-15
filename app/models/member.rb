class Member < ApplicationRecord
  validates :team_id, presence: true
  validates :member_name, presence: true
  validates :uniform_number, presence: true

  belongs_to :team
end
