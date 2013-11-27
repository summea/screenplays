class RemoveBlockIdFromBlocks < ActiveRecord::Migration
  def change
    remove_column :blocks, :block_id, :integer
  end
end
