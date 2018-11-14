class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :email
      t.boolean :activated
      t.string :activation_digest
      t.datetime :activated_at
      t.string :remember_digest

      t.timestamps
    end
  end
end
