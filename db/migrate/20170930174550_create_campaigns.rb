class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.string :name
      t.string :city
      t.string :type
      t.string :short_description
      t.text :long_description
      t.timestamp :deadline
      t.monetize :goal
      t.references :brewery, foreign_key: true

      t.timestamps
    end
  end
end
