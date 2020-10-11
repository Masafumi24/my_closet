class Accessory < ApplicationRecord
  has_many :brands, through: :accessory_blands
  has_many :accessory_brands
  has_many :colors, through: :accessory_colors
  has_many :accessory_colors
end
