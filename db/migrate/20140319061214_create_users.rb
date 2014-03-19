class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :password_digest, null: false
      t.string :session_token, null: false
      t.string :confirmation_token
      t.string :reset_token

      t.timestamps
    end
    add_index :users, :email
  end
end
