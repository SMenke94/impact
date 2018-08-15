class Project < ApplicationRecord
  belongs_to :user
  belongs_to :category, optional: true
  has_many :bookings
  has_many :users, through: :bookings
  mount_uploader :photo, PhotoUploader
  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  validates :location, presence: true
  validates :capacity, presence: true
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  def capacity_on_date(date)
    capacity - bookings.select do |booking|
      booking.all_dates.include? date
    end.count
  end
end
