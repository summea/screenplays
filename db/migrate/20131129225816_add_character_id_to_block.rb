class AddCharacterIdToBlock < ActiveRecord::Migration
  def change
    add_column :blocks, :character_id, :integer
  end
end
