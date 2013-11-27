class Screenplay < ActiveRecord::Base
  has_many :blocks
  has_many :block_types, through: :blocks
end
