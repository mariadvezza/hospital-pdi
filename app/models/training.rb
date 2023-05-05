# == Schema Information
#
# Table name: trainings
#
#  id                       :bigint           not null, primary key
#  certification_date       :datetime
#  certification_expires_at :datetime
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#  physician_id             :bigint           not null
#  procedure_id             :bigint           not null
#
# Indexes
#
#  index_trainings_on_physician_id  (physician_id)
#  index_trainings_on_procedure_id  (procedure_id)
#
# Foreign Keys
#
#  fk_rails_...  (physician_id => physicians.id)
#  fk_rails_...  (procedure_id => procedures.id)
#
class Training < ApplicationRecord
  belongs_to :physician
  belongs_to :procedure
end
