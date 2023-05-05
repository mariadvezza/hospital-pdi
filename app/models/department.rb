# == Schema Information
#
# Table name: departments
#
#  id           :bigint           not null, primary key
#  name         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  physician_id :bigint           not null
#
# Indexes
#
#  index_departments_on_physician_id  (physician_id)
#
# Foreign Keys
#
#  fk_rails_...  (physician_id => physicians.id)
#
class Department < ApplicationRecord
  belongs_to :physician
end
