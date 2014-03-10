class AddCarimageToVehicles < ActiveRecord::Migration
  def change
    add_column :vehicles, :carImageUploader, :string

  end
end
