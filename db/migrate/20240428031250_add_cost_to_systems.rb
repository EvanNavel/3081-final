class AddCostToSystems < ActiveRecord::Migration[7.1]
  def change
    add_column :systems, :cost, :decimal
  end
end
