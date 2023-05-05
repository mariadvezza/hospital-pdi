# == Schema Information
#
# Table name: nurses
#
#  id         :bigint           not null, primary key
#  name       :string
#  position   :string
#  registered :boolean
#  ssn        :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Nurse < ApplicationRecord
end
