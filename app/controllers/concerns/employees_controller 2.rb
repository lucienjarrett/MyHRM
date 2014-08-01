class EmployeesController < ApplicationController
  before_action :set_employee, only: [:show, :edit, :update, :destroy]
  before_action :load_wizard, only: [:new, :edit, :create, :update]

  
  # GET /employees
  # GET /employees.json
  def index
    @employees = Employee.all  
 end

  # GET /employees/1
  # GET /employees/1.json
  def show
    
  end

  # GET /employees/new
  def new

    @employee = @wizard.object

  end 


  # GET /employees/1/edit
  def edit
    @wizard.new(@employee, session).start
  end

  # POST /employees
  # POST /employees.json
  def create

    @employee = @wizard.object
    
    if @employee.step?(3)
         @employee.employee_zcontacts.build 
      end
      if @employee.step?(2)
        @employee.employee_zeducations.build
      end
      if @employee.step?(4)
        @employee.employee_jobs.build
      end

      if @wizard.save
        redirect_to @employee, notice: "Order saved!"
      else
        render :new
      end
    end

    
end 

  # PATCH/PUT /employees/1
  # PATCH/PUT /employees/1.json
 
  def update
       if wizard.save
         redirect_to @employee, notice: 'Employee was successfully updated.'
       else
         render action: 'edit'
       end 
  end

  # DELETE /employees/1
  # DELETE /employees/1.json
  def destroy
    @employee.destroy
    respond_to do |format|
      format.html { redirect_to employees_url, notice: 'Employee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee
      @employee = Employee.find(params[:id])
    end

    def load_wizard
      @wizard = ModelWizard.new(@employee || Employee, session, params)
      if self.action_name.in? %w[new edit]
        @wizard.start
      elsif self.action_name.in? %w[create update]
        @wizard.process
      end
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def employee_params
      params.require(:employee).permit(      
      :first_name, :last_name, :middle_name, :gender, :dob, 
      :marital_status_id, :trn, :nis, :email, :image, :location_id, :company_id, :bank_id, :parish_id,
      :home_address_1, :home_address_2, :bank_account_number, :employee_number, :department_id, :city, 
      :mobile_phone, :work_phone, :position_id,  :work_schedule_id, :current_step,
      :employee_jobs_attributes => [:id, :employer_name, :date_from, :date_to, :_destroy],  
      :employee_zeducations_attributes => [:id, :date_from, :date_to, :education_id, :school_attended, :_destroy],
      :employee_zcontacts_attributes => [:id, :relationship_id, :first_name, :last_name, :phone_number, :is_emergency_contact, :_destroy]
      )

      
    end

