class Appointment < ApplicationRecord
    belongs_to :patient
    belongs_to :doctor

    def doctor_name=(name)
        self.doctor = Doctor.find_or_create_by(name: name)
    end

    def doctor_name
        self.doctor ? self.doctor.name : nil
    end

end