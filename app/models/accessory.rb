class Accessory < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :accessory_brands
  has_many :brands, through: :accessory_brands
  has_many :accessory_colors
  has_many :colors, through: :accessory_colors
end
