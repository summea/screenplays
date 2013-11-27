class CreateDialogues < ActiveRecord::Migration
  def change
    create_table :dialogues do |t|
      t.text :body

      t.timestamps
    end
  end
end
