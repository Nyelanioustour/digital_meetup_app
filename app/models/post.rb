class Post < ApplicationRecord
  belongs_to :user
  belongs_to :movie

  validates :post_title, presence: true
  validates :comment, presence: true
  validates :rating, presence: true
  # validates :user_id, presence: true
  # validates :movies, presence: true
end
