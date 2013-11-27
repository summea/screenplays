class CreateActionBlocks < ActiveRecord::Migration
  def change
    create_table :action_blocks do |t|
      t.string :scene_description

      t.timestamps
    end
  end
end
