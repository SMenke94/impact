class Project < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :users, through: :bookings
  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  validates :location, presence: true
  validates :category, presence: true
  validates :capacity, presence: true
end
