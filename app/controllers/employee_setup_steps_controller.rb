class EmployeeSetupStepsController < ApplicationController
   include Wicked::Wizard
   steps :personal, :company
     
     
    def show
      @employee = Employee.new
      render_wizard
    end
  
end
