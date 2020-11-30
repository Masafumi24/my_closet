class Top < ApplicationRecord
  mount_uploader :image, ImageUploader
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture_data

  has_many :top_brands
  has_many :brands, through: :top_brands

  has_many :top_colors
  has_many :colors, through: :top_colors

  has_many :top_seasons
  has_many :seasons, through: :top_seasons
end
