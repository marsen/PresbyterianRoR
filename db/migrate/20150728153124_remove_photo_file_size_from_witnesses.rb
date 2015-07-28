class RemovePhotoFileSizeFromWitnesses < ActiveRecord::Migration
  def change
    remove_column :witnesses, :photo_file_size, :integer
  end
end
