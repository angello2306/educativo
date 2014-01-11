class CreateRecordcards < ActiveRecord::Migration
  def change
    create_table :recordcards do |t|
      t.integer :level_id
      t.integer :grade_id
      t.integer :section_id
      t.integer :course_id
      t.integer :student_id
      t.integer :p1
      t.integer :p2
      t.integer :p3
      t.integer :p4
      t.integer :em
      t.integer :eb

      t.timestamps
    end
  end
end
