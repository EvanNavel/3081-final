class CreateGames < ActiveRecord::Migration[7.1]
  def change
    create_table :games do |t|
      t.string :title
      t.date :release_date
      t.references :system, null: false, foreign_key: true
      t.string :genre
      t.decimal :cost
      t.decimal :current_value
      t.string :condition

      t.timestamps
    end
  end
end
