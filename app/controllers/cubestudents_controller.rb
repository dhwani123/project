class CubestudentsController < ApplicationController
  def index
  	@cubestudents = Cubestudent.all
  end

  def show
  end
end
