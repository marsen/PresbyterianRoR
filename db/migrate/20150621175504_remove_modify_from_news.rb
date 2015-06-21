class RemoveModifyFromNews < ActiveRecord::Migration
  def change
    remove_column :news, :modify, :timestamp
  end
end
