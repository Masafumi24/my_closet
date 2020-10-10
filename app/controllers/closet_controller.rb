class ClosetController < ApplicationController
  
  def index
    colors = Color.all
    color_length = colors.length
    overall_percentage = 100 / color_length
    color_data_hash = {}
    @colors = []
    colors.each_with_index do |color, index|
      if index == 0
        color_data_hash = {color.color_data.name => 1}
        @colors << color.color_data.backcolor
      end
      if color_data_hash.key?(color.color_data.name)
        color_data_hash[color.color_data.name] += 1
      else
        color_data_hash[color.color_data.name] = 1
        @colors << color.color_data.backcolor
      end
    end
    p colors
    @chart = color_data_hash
  end

end
