class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :category
      t.string :difficulty
      t.boolean :leader?, default: false, null: false
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
