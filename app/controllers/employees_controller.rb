class EmployeesController < ApplicationController
  before_action :set_employee, only: [:show, :edit, :update, :destroy]
  #before_filter :authorize, only: [:edit, :update]
  
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
   
    @employee = Employee.new 
    @employee_jobs = @employee.employee_jobs.build 
    @employee_educations = @employee.employee_educations.build 
    @employee_contacts = @employee.employee_contacts.build 
    @employee_reviews = @employee.employee_reviews.build
    @employee_vacations = @employee.employee_vacations.build
  end 


  # GET /employees/1/edit
  def edit
  end

  # POST /employees
  # POST /employees.json
  def create
    @employee = Employee.new(employee_params)
    respond_to do |format|
      if @employee.save
        format.html { redirect_to @employee, notice: 'Education was successfully created.' }
        format.json { render :show, status: :created, location: @education }
      else
        format.html { render :new }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
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
      :mobile_phone, :work_phone, :position_id,  :work_schedule_id, 
      :employee_jobs_attributes => [:id, :employer_name, :date_from, :date_to, :_destroy],  
      :employee_educations_attributes => [:id, :date_from, :date_to, :education_id, :school_attended, :_destroy],
      :employee_contacts_attributes => [:id, :relationship_id, :first_name, :last_name, :phone_number, :is_emergency_contact, :_destroy]
      )

      
    end
end

