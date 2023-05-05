# == Schema Information
#
# Table name: blocks
#
#  id         :bigint           not null, primary key
#  block      :integer
#  floor      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Block < ApplicationRecord
end
