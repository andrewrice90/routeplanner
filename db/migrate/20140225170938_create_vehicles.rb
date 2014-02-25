class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :reg
      t.string :decription
      t.float :height
      t.string :carimage
      t.string :user_id

      t.timestamps
    end
  end
end
