# == Schema Information
#
# Table name: medications
#
#  id          :bigint           not null, primary key
#  brand       :string
#  description :string
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Medication < ApplicationRecord
end
