class AddCoordinatesToStudio < ActiveRecord::Migration[6.1]
  def change
    add_column :studios, :latitude, :float
    add_column :studios, :longitude, :float
  end
end
