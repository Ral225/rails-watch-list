class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  # validates_uniqueness_of :list_id, scope: movie_id
  validates_uniqueness_of :movie_id, scope: :list_id
  validates :comment, presence: true, length: { minimum: 6 }
end
