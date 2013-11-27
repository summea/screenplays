class AddBlockTypeDetailsToBlockTypes < ActiveRecord::Migration
  def change
    add_column :block_types, :block_id, :integer
  end
end