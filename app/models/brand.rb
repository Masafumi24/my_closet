class Brand < ApplicationRecord
  has_many :accessory_brands
  has_many :accessories, through: :accessory_brands

  has_many :other_brands
  has_many :others, through: :other_brands

  has_many :outerwear_brands
  has_many :outerwears, through: :outerwear_brands

  has_many :pant_brands
  has_many :pants, through: :pant_brands

  has_many :shoe_brands
  has_many :shoes, through: :shoe_brands

  has_many :top_brands
  has_many :tops, through: :top_brands
end
