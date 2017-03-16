class AddCoordinatesToHamac < ActiveRecord::Migration[5.0]
  def change
    add_column :hamacs, :latitude, :float
    add_column :hamacs, :longitude, :float
  end
end
