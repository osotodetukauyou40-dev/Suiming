class Star < ApplicationRecord
  belongs_to :user
  belongs_to :tweet

  validates :user_id, uniqueness: { scope: :tweet_id }
  validates :score, presence: true, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
end
