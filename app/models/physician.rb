# == Schema Information
#
# Table name: physicians
#
#  id         :bigint           not null, primary key
#  name       :string
#  position   :string
#  ssn        :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Physician < ApplicationRecord
end
