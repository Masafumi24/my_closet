class Top < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture_data
  belongs_to_active_hash :color_data

  has_many :brands, through: :top_blands
  has_many :top_brands
  has_many :colors, through: :top_colors
  has_many :top_colors
  has_many :seasons, through: :top_seasons
  has_many :top_colors
end
