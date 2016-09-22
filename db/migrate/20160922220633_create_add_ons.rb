class CreateAddOns < ActiveRecord::Migration[5.0]
  def change
    create_table :add_ons do |t|
      t.integer :game_id
      t.string :title
      t.text :description
      t.integer :cost

      t.timestamps
    end
  end
end
