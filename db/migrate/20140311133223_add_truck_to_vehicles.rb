class AddTruckToVehicles < ActiveRecord::Migration
  def change
    add_column :vehicles, :truck, :boolean

  end
end
