class CreateStudentRegisteredCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :student_registered_courses do |t|
      t.integer :student_id
      t.integer :register_course_id
    end
  end
end
