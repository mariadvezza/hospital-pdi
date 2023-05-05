# == Schema Information
#
# Table name: procedures
#
#  id         :bigint           not null, primary key
#  cost       :integer
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Procedure < ApplicationRecord
end
