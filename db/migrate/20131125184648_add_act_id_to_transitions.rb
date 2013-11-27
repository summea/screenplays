class AddActIdToTransitions < ActiveRecord::Migration
  def change
    add_column :transitions, :act_id, :integer
  end
end
