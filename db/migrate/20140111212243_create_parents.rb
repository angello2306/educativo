class CreateParents < ActiveRecord::Migration
  def change
    create_table :parents do |t|
      t.integer :student_id
      t.string :lname
      t.string :fname
      t.integer :dni

      t.timestamps
    end
  end
end
