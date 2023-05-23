# == Schema Information
#
# Table name: oncalls
#
#  id         :bigint           not null, primary key
#  end        :datetime
#  start      :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  block_id   :bigint           not null
#  nurse_id   :bigint           not null
#
# Indexes
#
#  index_oncalls_on_block_id  (block_id)
#  index_oncalls_on_nurse_id  (nurse_id)
#
# Foreign Keys
#
#  fk_rails_...  (block_id => blocks.id)
#  fk_rails_...  (nurse_id => nurses.id)
#
class Oncall < ApplicationRecord
  belongs_to :nurse
  belongs_to :block
end
