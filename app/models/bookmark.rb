class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie

  validates :list, presence: true
  validates :movie, presence: true
  validates :comment, length: { minimum: 6 }
  validates :movie, uniqueness: { scope: :list}
end
