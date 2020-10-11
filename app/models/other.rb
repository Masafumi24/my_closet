class Other < ApplicationRecord
  has_many :brands, through: :other_blands
  has_many :other_brands
  has_many :colors, through: :other_colors
  has_many :other_colors
  has_many :seasons, through: :other_seasons
  has_many :other_colors
end
