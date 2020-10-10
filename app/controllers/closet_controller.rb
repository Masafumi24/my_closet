class ClosetController < ApplicationController
  def index
    @color_graph_data = Color.color_data_acquisition_for_graphs
    @background_colors = Color.background_color_data_acquisition_for_graphs
  end
end
