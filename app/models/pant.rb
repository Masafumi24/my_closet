class Pant < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :pant_brands
  has_many :brands, through: :pant_brands
  has_many :pant_colors
  has_many :colors, through: :pant_colors
  has_many :pant_seasons
  has_many :seasons, through: :pant_seasons
end
