class Movie < ApplicationRecord
  validates :title, presence: true
  validates :year, presence: true
  validates :plot, length: {in: 100 .. 200}
  validates :director, presence: true
  validates :director, length: {minimum: 2}
  has_many :actors
end
