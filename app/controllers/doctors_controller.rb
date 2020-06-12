class DoctorsController < ApplicationController
    before_action :set_doctor, except: [:index, :new, :create]

    def index
        @doctors = Doctor.all
    end

    def show
    end

    private

    def set_doctor
        @doctor = Doctor.find_by(id: params[:id])
    end
end