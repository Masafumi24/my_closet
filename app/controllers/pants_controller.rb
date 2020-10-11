class PantsController < ApplicationController
  def new
    @pant = Pant.new
  end
end