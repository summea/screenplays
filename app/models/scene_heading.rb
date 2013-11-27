class SceneHeading < ActiveRecord::Base
  belongs_to :screenplay
  belongs_to :act
end