# == Schema Information
#
# Table name: appointments
#
#  id               :bigint           not null, primary key
#  end              :datetime
#  examination_room :string
#  start            :datetime
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  nurse_id         :bigint
#  patient_id       :bigint           not null
#  physician_id     :bigint           not null
#
# Indexes
#
#  index_appointments_on_nurse_id      (nurse_id)
#  index_appointments_on_patient_id    (patient_id)
#  index_appointments_on_physician_id  (physician_id)
#
# Foreign Keys
#
#  fk_rails_...  (nurse_id => nurses.id)
#  fk_rails_...  (patient_id => patients.id)
#  fk_rails_...  (physician_id => physicians.id)
#
class Appointment < ApplicationRecord
  belongs_to :patient
  belongs_to :nurse
  belongs_to :physician
end
