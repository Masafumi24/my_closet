class Brand < ApplicationRecord
  has_many :accessories, through: :accessory_blands
  has_many :accessory_brands

  has_many :others, through: :other_blands
  has_many :other_brands

  has_many :outerwears, through: :outerwear_blands
  has_many :outerwear_brands

  has_many :pants, through: :pant_blands
  has_many :pant_brands

  has_many :shoes, through: :shoe_blands
  has_many :shoe_brands

  has_many :tops, through: :tops_blands
  has_many :tops_brands
end
