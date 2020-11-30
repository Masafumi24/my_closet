class Other < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :other_brands
  has_many :brands, through: :other_brands
  has_many :other_colors
  has_many :colors, through: :other_colors
  has_many :other_seasons
  has_many :seasons, through: :other_seasons
end
