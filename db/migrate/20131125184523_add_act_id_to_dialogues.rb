class AddActIdToDialogues < ActiveRecord::Migration
  def change
    add_column :dialogues, :act_id, :integer
  end
end
