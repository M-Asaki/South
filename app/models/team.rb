class Team < ApplicationRecord
  validates :user_id, presence: true
  validates :team_name, presence: true

  belongs_to :user
  has_many :members
  has_many :teams

  mount_uploader :team_image, ImageUploader
end
