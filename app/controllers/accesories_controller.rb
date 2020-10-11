class AccesoriesController < ApplicationController
  def new
    @accessory = Accessory.new
  end
end