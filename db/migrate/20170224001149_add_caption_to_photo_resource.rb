class AddCaptionToPhotoResource < ActiveRecord::Migration[5.0]
  def change
    add_column :photo_resources, :caption, :string
  end
end
