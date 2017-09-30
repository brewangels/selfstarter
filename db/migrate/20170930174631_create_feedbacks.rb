class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.references :beer
      t.text :q1
      t.text :q2
      t.text :q3
      t.text :q4
      t.text :q5
      t.text :q6
      t.text :q7
      t.text :q8
      t.text :q9
      t.text :final
    end
  end
end
