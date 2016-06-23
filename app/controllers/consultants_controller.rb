class ConsultantsController < ApplicationController
  def index
  	@green = Green.all
  end
end
