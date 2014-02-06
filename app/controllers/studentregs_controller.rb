class StudentregsController < ApplicationController
  def new
    @studentreg = Studentreg.new

  end

  def create
    
    @studentreg = Studentreg.create(params[:studentreg])
      if @studentreg.save
            redirect_to @studentreg
          else
            render action: 'new'
              end
  
  end

  def show
   

  end

  def index
    @studentregs = Studentreg.all

    
    end
  end