# == Schema Information
#
# Table name: patients
#
#  id           :bigint           not null, primary key
#  address      :string
#  name         :string
#  phone        :string
#  ssn          :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  insurance_id :integer
#  physician_id :bigint           not null
#
# Indexes
#
#  index_patients_on_physician_id  (physician_id)
#  index_patients_on_ssn           (ssn) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (physician_id => physicians.id)
#
class Patient < ApplicationRecord
  belongs_to :physician
end
