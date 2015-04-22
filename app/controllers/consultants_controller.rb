class ConsultantsController < ApplicationController
  before_action :set_consultant,only: [:show, :search,:edit, :update, :destroy]

  # GET /consultants
  
  def index
    @consultants = Consultant.all
  end

  # GET /consultants/1
  
  def show
    @consultants = Consultant.all
  end
  
  def search
     @consultants = Consultant.find_all_by_name(params[:name])
  end

  # GET /consultants/new
  def new
    @consultant = Consultant.new
  end

  # GET /consultants/1/edit
  def edit
  @consultant = Consultant.find(params[:id])
  end

  # POST /consultants
 
   def create
    @consultant = Consultant.new(consultant_params)
    if @consultant.save
      session[:consultant_id] = @consultant.id
      redirect_to new_consultant_url, notice: 'Consultant successfully added.'
    else
      render :new
    end
 
  end

  # PATCH/PUT /consultants/1

  def update
  
      if @consultant.update(consultant_params)
        redirect_to @consultant, notice: 'Consultant was successfully updated.' 
      else
         render :edit 
     end
    end

  # DELETE /consultants/1
  
  def destroy
    @consultant = Consultant.find(params[:id])
    @consultant.destroy
    flash[:notice] = "Consultant was successfully deleted."
    redirect_to consultants_path 
  end

  private
    def set_consultant
      @consultant = Consultant.find(params[:name])
    end
    def consultant_params
      params.require(:consultant).permit(:Name, :Address, :Contact_no,:Marketing_contact_person,:Support_contact_person)
    end
end

