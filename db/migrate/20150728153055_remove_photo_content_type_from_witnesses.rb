class RemovePhotoContentTypeFromWitnesses < ActiveRecord::Migration
  def change
    remove_column :witnesses, :photo_content_type, :string
  end
end
