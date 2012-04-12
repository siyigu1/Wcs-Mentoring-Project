class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :content
      t.string :introduction
      t.integer :author_id
      t.string :location
      t.datetime :time

      t.timestamps
    end
      add_index :events, :author_id
  end
end
