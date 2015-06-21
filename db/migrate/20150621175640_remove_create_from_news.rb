class RemoveCreateFromNews < ActiveRecord::Migration
  def change
    remove_column :news, :create, :timestamp
  end
end
