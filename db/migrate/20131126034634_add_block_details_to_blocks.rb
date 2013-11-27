class AddBlockDetailsToBlocks < ActiveRecord::Migration
  def change
    add_column :blocks, :block_type_id, :integer
    add_column :blocks, :body, :text
    add_column :blocks, :screenplay_id, :integer
    add_column :blocks, :order_value, :integer
  end
end
