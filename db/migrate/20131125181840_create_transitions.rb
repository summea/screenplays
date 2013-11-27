class CreateTransitions < ActiveRecord::Migration
  def change
    create_table :transitions do |t|

      t.timestamps
    end
  end
end
