class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.integer :id
      t.string :key
      t.string :title
      t.string :content
      t.timestamp :create
      t.timestamp :modify

      t.timestamps null: false
    end
  end
end
