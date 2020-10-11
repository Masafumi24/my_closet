class OuterwearsController < ApplicationController
  def new
    @outerwear = Outerwear.new
  end
end