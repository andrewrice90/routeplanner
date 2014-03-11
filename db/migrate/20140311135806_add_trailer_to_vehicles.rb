class AddTrailerToVehicles < ActiveRecord::Migration
  def change
    add_column :vehicles, :trailer, :string

  end
end
