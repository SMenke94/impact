class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :project
  validates :start_date, presence: true
  validates :end_date, presence: true
  validate :start_date_valid, :end_date_valid, :valid_capacity


  def start_date_valid
    if start_date.present? && start_date < Date.today
      errors.add(:start_date, "can't be in the past")
    end
  end

  def end_date_valid
    if end_date.present? && end_date < start_date
      errors.add(:end_date, "can't be before start date")
    end
  end

  def valid_capacity
    all_dates.each do |date|
      if project.capacity_on_date(date) < 1
        errors.add(:overbooking, "#{date.strftime('%A, %b %d')} is fully booked")
      end
    end
  end

  def all_dates
    (start_date..end_date)
  end

  def upcoming_booking?
    self.start_date > Date.today
  end

  def past_booking?
    self.start_date <= Date.today
  end

  def all_volunteers
    participants = []
    self.project.bookings.each do |booking|
      if (booking.all_dates).overlaps?(self.all_dates)
        participants << booking.user
      end
    end
    return participants
  end

end
