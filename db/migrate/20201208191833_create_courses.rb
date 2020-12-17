class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :description
      t.string :grade
      t.string :student_id
      t.string :year_taken
      t.timestamps
    end
  end
end
