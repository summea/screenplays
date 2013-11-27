class CreateSceneHeadings < ActiveRecord::Migration
  def change
    create_table :scene_headings do |t|
      t.string :location
      t.string :time

      t.timestamps
    end
  end
end
