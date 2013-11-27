class Act < ActiveRecord::Base
  belongs_to :screenplay
  has_many :action_blocks
  has_many :dialogues
  has_many :scene_headings
  has_many :transitions
end
