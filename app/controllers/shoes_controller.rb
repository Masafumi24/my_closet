class ShoesController < ApplicationController
  def new
    @shoe = Shoe.new
  end
end