class CreateRegisterCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :register_courses do |t|
      t.string :name
      t.string :start
      t.string :end
      t.string :description
      t.integer :student_id
      t.timestamps
    end
  end
end
