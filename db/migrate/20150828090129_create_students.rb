class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :roll_no
      t.float :maths_marks
      t.float :science_marks
      t.float :social_marks
      t.string :english_marks
      t.float :kannada_marks

      t.timestamps null: false
    end
  end
end
