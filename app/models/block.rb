class Block < ActiveRecord::Base
  belongs_to :screenplay
  has_one :block_type
end
