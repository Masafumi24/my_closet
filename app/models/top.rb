class Top < ApplicationRecord
  has_many :brands, through: :top_blands
  has_many :top_brands
  has_many :colors, through: :top_colors
  has_many :top_colors
  has_many :seasons, through: :top_seasons
  has_many :top_colors
end
