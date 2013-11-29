class RenameOrderValueToPositionInBlocks < ActiveRecord::Migration
  def change
    rename_column :blocks, :order_value, :position
  end
end
