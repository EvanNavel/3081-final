class CreateSystems < ActiveRecord::Migration[7.1]
  def change
    create_table :systems do |t|
      t.string :name
      t.date :release_date
      t.string :manufacturer

      t.timestamps
    end
  end
end
