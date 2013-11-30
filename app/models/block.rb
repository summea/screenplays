class Block < ActiveRecord::Base
  belongs_to :screenplay, dependent: :delete
  has_one :block_type
end
