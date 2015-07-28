class RemovePhotoFileNameFromWitnesses < ActiveRecord::Migration
  def change
    remove_column :witnesses, :photo_file_name, :string
  end
end
