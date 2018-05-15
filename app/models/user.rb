class User < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :email, presence: true
  validates :email, uniqueness: true

  has_many :teams

  has_secure_password
end
