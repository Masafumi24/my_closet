class Shoe < ApplicationRecord
  has_many :brands, through: :shoe_blands
  has_many :shoe_brands
  has_many :colors, through: :shoe_colors
  has_many :shoe_colors
  has_many :seasons, through: :shoe_seasons
  has_many :shoe_colors
end
