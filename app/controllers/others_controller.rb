class OthersController < ApplicationController
  def new
    @other = Other.new
  end
end