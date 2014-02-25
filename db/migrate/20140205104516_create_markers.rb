class CreateMarkers < ActiveRecord::Migration
  def change
    create_table :markers do |t|
      t.string :address
      t.float :height
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
