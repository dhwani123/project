class AssignmentsController < ApplicationController
  before_filter :authenticate_cubeteacher!, except: [:index]
  def index
  	@assignments = Assignment.all
  end

  def new
  	@assignment = Assignment.new
  end

  def create
  	@assignment = Assignment.new(assignment_params)
    @assignment.postedby = current_cubeteacher.email
  	if @assignment.save
  		redirect_to assignments_path, notice: "The assignment #{@assignment.name} has been uploaded."
  	else
  		render "new"
  	end
  end


  def destroy
  	@assignment = Assignment.find(params[:id])
  	@assignment.destroy
  	redirect_to assignments_path, notice: "the assignment #{@assignment.name} has been removed."
  end

  private
  def assignment_params
  	params.require(:assignment).permit(:name, :attachment, :subject)
  end
end
