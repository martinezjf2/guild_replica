class RegisterCourse < ApplicationRecord
    has_many :student_registered_courses
    has_many :students, through: :student_registered_courses
end
