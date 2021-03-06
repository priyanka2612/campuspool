class DepartmentsController < ApplicationController
  before_action :set_department, only: [:show, :edit, :update, :destroy]

  # GET /departments
  
  def index
    @departments = Department.all
  end

  # GET /departments/1
 
  def show
  end

  # GET /departments/new
  def new
    @department = Department.new
  end



  # POST /departments
  
    def create
    @department = Department.new(department_params)
    if @department.save
      session[:department_id] = @department.id
      redirect_to new_department_url, notice: 'Department successfully added.'
    else
      render :new
    end
   end
  
  def edit
    @department = Department.find(params[:id])
  end

  # PATCH/PUT /departments/1
  def update
    
      if @department.update(department_params)
        redirect_to @department, notice: 'Department was successfully updated.' 
      else
         render :edit 
       
      end
  end

  # DELETE /departments/1
  def destroy
     @department = Department.find(params[:id])
    @department.destroy
    flash[:notice] = "Department was successfully deleted."
    redirect_to departments_path 
  end

  private
   
    def set_department
      @department = Department.find(params[:id])
    end

    
    def department_params
      params.require(:department).permit(:dept_name, :dept_no)
    end
end
