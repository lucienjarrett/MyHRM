class EmployeesController < ApplicationController
  before_action :set_employee, only: [:show, :edit, :update, :destroy]

  
  # GET /employees
  # GET /employees.json
  def index
    @employees = Employee.all  
 end

  # GET /employees/1
  # GET /employees/1.json
  def show
    @employee = Employee.find(params[:id])
  end

  # GET /employees/new
  def new
    session[:employee_params] ||= {}
    @employee = Employee.new(session[:employee_params]) 
    @employee.current_step = session[:employee_step]

   @employee.employee_jobs.build
   @employee.employee_zeducations.build
   @employee.employee_zcontacts.build
   
  end 


  # GET /employees/1/edit
  def edit
  end

  # POST /employees
  # POST /employees.json
  def create
    session[:employee_params].deep_merge!(params[:employee]) if params[:employee]
    @employee = Employee.new(session[:employee_params])
    @employee.current_step = session[:employee_step]
    
    # @employee_jobs = @employee.employee_jobs.build
    # @employee_zeducations = @employee.employee_zeducations.build
    # @employee_zcontacts = @employee.employee_zcontacts.build

    if @employee.valid?
      if params[:back_button]
        @employee.previous_step 
      elsif @employee.last_step?
        @employee.save if @employee.all_valid?
      else
        @employee.next_step 
      end   
    session[:employee_step] = @employee.current_step
  end 
  if @employee.new_record?
    render "new"
  else  
  session[:employee_step] = session[:employee_params] = nil
  flash[:notice] = 'Employee was successfully created.'
  redirect_to @employee
  end    
end 

  # PATCH/PUT /employees/1
  # PATCH/PUT /employees/1.json
 
  def update
    respond_to do |format|
      if @employee.update(employee_params)
        format.html { redirect_to @employee, notice: 'Employee was successfully updated.' }
        format.json { render :show, status: :ok, location: @employee }
      else
        format.js
        format.html { render :edit }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
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
end

