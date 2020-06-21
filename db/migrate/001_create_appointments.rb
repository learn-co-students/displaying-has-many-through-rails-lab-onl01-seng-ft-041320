class CreateAppointments < ActiveRecord::Migration
    def change
        create_table :appointments do |t|
            t.datetime :appointment_datetime
            t.integer  :doctor_id
             t.integer  :patient_id
            t.belongs_to :doctor
             t.belongs_to :patient
            t.timestamps null: false 
        end
    end
end