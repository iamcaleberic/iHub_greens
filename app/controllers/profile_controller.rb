class ProfileController < ApplicationController
  def index
  	@green = Green.all
  end
end
