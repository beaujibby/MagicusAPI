class ChangeCost < ActiveRecord::Migration[5.0]
  def change
    rename_column :add_ons, :cost, :cost_cents
  end
end
