class StudentregsController < ApplicationController
  
  def new
    @studentreg = Studentreg.new
  end

  def create

    @studentreg = Studentreg.new(studentreg_params)

    @studentreg.myemail = current_cubestudent.email
    respond_to do |format|
    if @studentreg.save
    format.html { redirect_to @studentreg, notice: 'student was successfully created.' }
    else
        format.html { render action: 'new' }
    end
  end
  end

  def show
   @studentreg = Studentreg.find(params[:id])
  end

  def index
    @studentregs = Studentreg.find(:all)
    @date = params[:month] ? Date.parse(params[:month]) : Date.today
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
  
  private

  def studentreg_params
    params.require(:studentreg).permit(:firstname, :middlename, :lastname, :gender, :bloodgroup, :address, :contactnumber, :dateofbirth, :dateofjoining, :grade, :division, :fname, :fqualification, :foccupation, :fincome, :fcontactnumber, :femailid, :mname, :mqualification, :moccupation, :mincome, :mcontactnumber, :memailid, :avatar)
  end

  end