class Color < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to_active_hash :color_data
end
