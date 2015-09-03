class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string  :username, null: false
      t.string :hashed_password
      t.integer :dietary_restrictions_id

      t.timestamps
    end

      add_index :users, :username, unique: true
  end
end
