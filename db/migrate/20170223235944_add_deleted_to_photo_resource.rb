class AddDeletedToPhotoResource < ActiveRecord::Migration[5.0]
  def change
    add_column :photo_resources, :deleted, :boolean, default: false
  end
end
