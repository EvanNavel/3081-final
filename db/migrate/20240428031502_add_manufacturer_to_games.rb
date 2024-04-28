class AddManufacturerToGames < ActiveRecord::Migration[7.1]
  def change
    add_column :games, :manufacturer, :string
  end
end
