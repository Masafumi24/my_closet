class Shoe < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :shoe_brands
  has_many :brands, through: :shoe_brands
  has_many :shoe_colors
  has_many :colors, through: :shoe_colors
  has_many :shoe_seasons
  has_many :seasons, through: :shoe_seasons
end
