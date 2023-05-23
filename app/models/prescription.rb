# == Schema Information
#
# Table name: prescriptions
#
#  id             :bigint           not null, primary key
#  date           :datetime
#  dose           :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  appointment_id :bigint
#  medication_id  :bigint           not null
#  patient_id     :bigint           not null
#  physician_id   :bigint           not null
#
# Indexes
#
#  index_prescriptions_on_appointment_id  (appointment_id)
#  index_prescriptions_on_medication_id   (medication_id)
#  index_prescriptions_on_patient_id      (patient_id)
#  index_prescriptions_on_physician_id    (physician_id)
#  unique_prescriptions                   (patient_id,physician_id,medication_id,date) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (appointment_id => appointments.id)
#  fk_rails_...  (medication_id => medications.id)
#  fk_rails_...  (patient_id => patients.id)
#  fk_rails_...  (physician_id => physicians.id)
#
class Prescription < ApplicationRecord
  belongs_to :physician
  belongs_to :patient
  belongs_to :medication
  belongs_to :appointment
end
