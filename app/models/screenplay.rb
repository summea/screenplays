class Screenplay < ActiveRecord::Base
  has_many :blocks, dependent: :destroy
  has_many :block_types, through: :blocks
end
