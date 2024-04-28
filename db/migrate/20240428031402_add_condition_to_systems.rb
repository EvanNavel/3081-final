class AddConditionToSystems < ActiveRecord::Migration[7.1]
  def change
    add_column :systems, :condition, :string
  end
end
