class CreateWitnesses < ActiveRecord::Migration
  def change
    create_table :witnesses do |t|
      t.string :key
      t.string :title
      t.string :content
      t.string :photo

      t.timestamps null: false
    end
  end
end
