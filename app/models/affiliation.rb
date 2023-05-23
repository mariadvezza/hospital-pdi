# == Schema Information
#
# Table name: affiliations
#
#  id            :bigint           not null, primary key
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  department_id :bigint           not null
#  physician_id  :bigint           not null
#
# Indexes
#
#  index_affiliations_on_department_id                   (department_id)
#  index_affiliations_on_physician_id                    (physician_id)
#  index_affiliations_on_physician_id_and_department_id  (physician_id,department_id) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (department_id => departments.id)
#  fk_rails_...  (physician_id => physicians.id)
#
class Affiliation < ApplicationRecord
  belongs_to :physician
  belongs_to :department
end
