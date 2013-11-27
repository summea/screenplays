class AddBelongsToActs < ActiveRecord::Migration
  def change
    add_column :acts, :screenplay_id, :integer
  end
end
