class Review < ApplicationRecord
  belongs_to :user
  belongs_to :author, class_name: "User", foreign_key: "author_id"
  validates :content, length: { minimum: 10 }
end
