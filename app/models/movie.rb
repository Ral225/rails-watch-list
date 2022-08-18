class Movie < ApplicationRecord
  has_many :bookmarks
  validates :title, presence: true, uniqueness: true, allow_blank: false
  validates :overview, presence: true
end

# t.string "title"
# t.string "overview"
# t.string "poster_url"
# t.integer "rating"
