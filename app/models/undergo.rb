# == Schema Information
#
# Table name: undergos
#
#  id           :bigint           not null, primary key
#  date         :datetime
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  nurse_id     :bigint
#  patient_id   :bigint           not null
#  physician_id :bigint           not null
#  procedure_id :bigint           not null
#  stay_id      :bigint           not null
#
# Indexes
#
#  index_undergos_on_nurse_id      (nurse_id)
#  index_undergos_on_patient_id    (patient_id)
#  index_undergos_on_physician_id  (physician_id)
#  index_undergos_on_procedure_id  (procedure_id)
#  index_undergos_on_stay_id       (stay_id)
#  unique_undergoes                (patient_id,procedure_id,stay_id,date) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (nurse_id => nurses.id)
#  fk_rails_...  (patient_id => patients.id)
#  fk_rails_...  (physician_id => physicians.id)
#  fk_rails_...  (procedure_id => procedures.id)
#  fk_rails_...  (stay_id => stays.id)
#
class Undergo < ApplicationRecord
  belongs_to :patient
  belongs_to :procedure
  belongs_to :stay
  belongs_to :physician
  belongs_to :nurse
end
