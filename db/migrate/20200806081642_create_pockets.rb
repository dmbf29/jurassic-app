class CreatePockets < ActiveRecord::Migration[6.0]
  def change
    create_table :pockets do |t|
      t.references :weapon, null: false, foreign_key: true
      t.references :dinosaur, null: false, foreign_key: true

      t.timestamps
    end
  end
end
