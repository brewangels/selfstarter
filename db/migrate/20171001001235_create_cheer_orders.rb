class CreateCheerOrders < ActiveRecord::Migration
  def change
    create_table :cheer_orders do |t|
      t.references :user, null: false
      t.references :cheer, null: false
      t.references :campaign, null: false
      t.timestamps
    end
  end
end
