class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.integer :points
      t.boolean :premium?

      t.timestamps
    end
  end
end
