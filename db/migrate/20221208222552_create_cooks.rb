class CreateCooks < ActiveRecord::Migration[7.0]
  def change
    create_table :cooks do |t|
      t.string :name
      t.string :ingredients
      t.string :prep_time
      t.string :instructions

      t.timestamps
    end
  end
end
