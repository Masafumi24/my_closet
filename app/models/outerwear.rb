class Outerwear < ApplicationRecord
  has_many :brands, through: :outerwear_blands
  has_many :outerwear_brands
  has_many :colors, through: :outerwear_colors
  has_many :outerwear_colors
  has_many :seasons, through: :outerwear_seasons
  has_many :outerwear_colors
end
