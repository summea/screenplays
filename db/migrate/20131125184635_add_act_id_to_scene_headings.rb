class AddActIdToSceneHeadings < ActiveRecord::Migration
  def change
    add_column :scene_headings, :act_id, :integer
  end
end
