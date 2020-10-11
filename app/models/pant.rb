class Pant < ApplicationRecord
  has_many :brands, through: :pant_blands
  has_many :pant_brands
  has_many :colors, through: :pant_colors
  has_many :pant_colors
  has_many :seasons, through: :pant_seasons
  has_many :pant_colors
end
