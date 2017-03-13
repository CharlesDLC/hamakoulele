class CreateHamacs < ActiveRecord::Migration[5.0]
  def change
    create_table :hamacs do |t|
      t.text :description
      t.string :picture
      t.integer :price, default: 0
      t.boolean :disponibility, default: true
      t.string :address

      t.timestamps
    end
  end
end
