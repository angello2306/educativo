class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_hash
      t.string :password_halt
      t.integer :type_user
      t.string :remember_token

      t.timestamps
    end
  end
end
