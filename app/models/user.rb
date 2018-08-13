class User < ApplicationRecord
  has_many :bookings
  has_many :projects, through: :bookings
  has_many :projects
  mount_uploader :profile_picture, PhotoUploader
  validates :first_name, presence: true
  validates :last_name, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
