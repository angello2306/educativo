class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.integer :user_id
      t.string :lname
      t.string :fname
      t.date :birthday
      t.text :address
      t.string :phone
      t.string :photo

      t.timestamps
    end
  end
end
