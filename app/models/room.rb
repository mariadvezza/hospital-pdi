# == Schema Information
#
# Table name: rooms
#
#  id          :bigint           not null, primary key
#  type        :string
#  unavailable :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  block_id    :bigint           not null
#
# Indexes
#
#  index_rooms_on_block_id  (block_id)
#
# Foreign Keys
#
#  fk_rails_...  (block_id => blocks.id)
#
class Room < ApplicationRecord
  belongs_to :block
end
