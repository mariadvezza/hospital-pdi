# == Schema Information
#
# Table name: stays
#
#  id         :bigint           not null, primary key
#  end        :datetime
#  start      :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  patient_id :bigint           not null
#  room_id    :bigint           not null
#
# Indexes
#
#  index_stays_on_patient_id  (patient_id)
#  index_stays_on_room_id     (room_id)
#
# Foreign Keys
#
#  fk_rails_...  (patient_id => patients.id)
#  fk_rails_...  (room_id => rooms.id)
#
class Stay < ApplicationRecord
  belongs_to :patient
  belongs_to :room
end
