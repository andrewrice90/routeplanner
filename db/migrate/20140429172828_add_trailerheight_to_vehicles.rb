class AddTrailerheightToVehicles < ActiveRecord::Migration
  def change
    add_column :vehicles, :trailerheight, :float

  end
end
