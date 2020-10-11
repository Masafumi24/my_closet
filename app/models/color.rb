class Color < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :color_data

  has_many :accessories, through: :color_blands
  has_many :accessory_colors

  has_many :others, through: :other_colors
  has_many :other_colors

  has_many :outerwears, through: :outerwear_colors
  has_many :outerwear_colors

  has_many :pants, through: :pant_colors
  has_many :pant_colors

  has_many :shoes, through: :shoe_colors
  has_many :shoe_colors

  has_many :tops, through: :tops_colors
  has_many :tops_colors

  class << self
    def color_data_acquisition_for_graphs
      colors = all
      color_graph_data = {}
      colors.each_with_index do |color, index|
        color_graph_data = { color.color_data.name => 1 } if index.zero?
        if color_graph_data.key?(color.color_data.name)
          color_graph_data[color.color_data.name] += 1
        else
          color_graph_data[color.color_data.name] = 1
        end
      end
      color_graph_data
    end

    def background_color_data_acquisition_for_graphs
      colors = all
      color_graph_data = {}
      background_colors = []
      colors.each_with_index do |color, index|
        if index.zero?
          color_graph_data = { color.color_data.name => 1 }
          background_colors << color.color_data.backcolor
        end
        if color_graph_data.key?(color.color_data.name)
          color_graph_data[color.color_data.name] += 1
        else
          color_graph_data[color.color_data.name] = 1
          background_colors << color.color_data.backcolor
        end
      end
      background_colors
    end
  end
end
