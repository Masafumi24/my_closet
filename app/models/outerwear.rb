class Outerwear < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :outerwear_brands
  has_many :brands, through: :outerwear_brands
  has_many :outerwear_colors
  has_many :colors, through: :outerwear_colors
  has_many :outerwear_seasons
  has_many :seasons, through: :outerwear_seasons
end
