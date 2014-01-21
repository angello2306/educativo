class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.integer :user_id
      t.string :lname
      t.string :fname
      t.integer :dni
      t.date :birthday
      t.text :address
      t.string :phone

      t.timestamps
    end
  end
end
