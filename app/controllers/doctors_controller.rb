class DoctorsController < ApplicationController
  before_action :set_doctor!, only: [:show, :index, :edit, :update]
  def new 
  end 
  
  def create 
  end 
  
  def show 
  end 
  
  def index 
    @doctors = Doctor.all 
  end 
  
  def edit 
  end 
  
  def update 
  end  
  
  private

  def doctor_params
    params.permit(:name, :department)
  end
  
  def set_doctor!
    @doctor = Doctor.find(params[:id])
  end
end
