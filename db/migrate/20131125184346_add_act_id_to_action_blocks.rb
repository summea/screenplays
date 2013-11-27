class AddActIdToActionBlocks < ActiveRecord::Migration
  def change
    add_column :action_blocks, :act_id, :integer
  end
end
