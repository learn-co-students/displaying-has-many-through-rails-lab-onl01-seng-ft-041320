class AppointmentsController < ApplicationController
    def show
        @appointment = Appointment.find(params[:id])
    end

    def new
        @appointment = Appointment.new(params.require(:appointment).permit(:doctor_id, :patient_id))
end
end 