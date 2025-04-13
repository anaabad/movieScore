class Movie < ApplicationRecord
  validates :name, presence: true
  belongs_to :director
  has_many :actor_movies
  has_many :actors, through: :actor_movies
end
