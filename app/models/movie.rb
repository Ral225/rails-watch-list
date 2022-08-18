class Movie < ApplicationRecord
  has_many :bookmark, dependent: :destroy
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
  validates :rating, presence: true
end

# t.string "title"
# t.string "overview"
# t.string "poster_url"
# t.integer "rating"
