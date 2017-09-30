class CreateCheers < ActiveRecord::Migration
  def change
    create_table :cheers do |t|
      t.references :campaign, null: false
      t.string :description, null: false
      t.monetize :value, null: false
      t.timestamps
    end
  end
end
