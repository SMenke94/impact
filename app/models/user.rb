class User < ApplicationRecord
  has_many :bookings
  has_many :projects, through: :bookings
  has_many :projects
  has_many :reviews, dependent: :destroy
  has_many :authored_reviews, class_name: "Review", foreign_key: "author_id"
  mount_uploader :profile_picture, PhotoUploader
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone, presence: true, length: { minimum: 10, maximum: 15 }
  validates :job_title, presence: true
  validates :location, presence: true
  validates :bio, length: { maximum: 500 }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
