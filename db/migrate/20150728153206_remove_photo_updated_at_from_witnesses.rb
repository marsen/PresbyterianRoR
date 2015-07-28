class RemovePhotoUpdatedAtFromWitnesses < ActiveRecord::Migration
  def change
    remove_column :witnesses, :photo_updated_at, :datetime
  end
end
