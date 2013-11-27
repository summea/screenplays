class CreateBlocks < ActiveRecord::Migration
  def change
    create_table :blocks do |t|

      t.timestamps
    end
  end
end
