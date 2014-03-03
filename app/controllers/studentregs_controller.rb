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
<<<<<<< HEAD
    @date = params[:month] ? Date.parse(params[:month]) : Date.today
=======

>>>>>>> 4d1d05d1f3011e8b3f15f66581160515c8ea2c9a
    
    end

    def update
    respond_to do |format|
      if @studentreg.update(studentreg_params)
        format.html { redirect_to @studentreg, notice: 'INformation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @studentreg.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end
  end