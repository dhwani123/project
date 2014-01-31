class StudentregsController < ApplicationController
  def new
    @studentreg = Studentreg.new

  end

  def create
    @studentreg = Studentreg.new(params[:studentreg])
      if @studentreg.save
            redirect_to @studentreg
              end
  
  end

  def show
    @studentreg = Studentreg.find(params[:id])

  end

  def index
    @studentregs = Studentreg.all
    @studentregs = Studentreg.find(:all)
    @date = params[:month] ? Date.parse(params[:month]) : Date.today
    
    end
  end