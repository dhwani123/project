class Cubestudents::RegistrationsController < Devise::RegistrationsController
  def create
  	super
  		
  	# Needed for Merit
      
  end

  def update
    @cubestudent = resource # Needed for Merit
    super
  end
end