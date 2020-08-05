class CreateDinosaurs < ActiveRecord::Migration[6.0]
  def change
    create_table :dinosaurs do |t|
      t.string :name
      t.string :image_url
      t.references :park, null: false, foreign_key: true

      t.timestamps
    end
  end
end
