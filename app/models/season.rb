class Season < ApplicationRecord
  has_many :others, through: :other_seasons
  has_many :other_seasons

  has_many :outerwears, through: :outerwear_seasons
  has_many :outerwear_seasons

  has_many :pants, through: :pant_seasons
  has_many :pant_seasons

  has_many :shoes, through: :shoe_seasons
  has_many :shoe_seasons

  has_many :tops, through: :tops_seasons
  has_many :tops_seasons
end
