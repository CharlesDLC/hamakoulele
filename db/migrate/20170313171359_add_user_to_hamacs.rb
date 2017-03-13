class AddUserToHamacs < ActiveRecord::Migration[5.0]
  def change
    add_reference :hamacs, :user, foreign_key: true
  end
end
