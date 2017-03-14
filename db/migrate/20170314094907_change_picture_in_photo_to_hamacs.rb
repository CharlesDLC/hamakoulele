class ChangePictureInPhotoToHamacs < ActiveRecord::Migration[5.0]
  def change
    remove_column :hamacs, :picture, :string
    add_column :hamacs, :photo, :string
    add_column :hamacs, :name, :string
  end
end
