class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.string :alias
      t.string :gender

      t.timestamps
    end
  end
end
