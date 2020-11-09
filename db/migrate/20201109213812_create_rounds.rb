class CreateRounds < ActiveRecord::Migration[6.0]
  def change
    create_table :rounds do |t|
      t.string :category
      t.integer :difficulty
      t.belongs_to :game, null: false, foreign_key: true

      t.timestamps
    end
  end
end
