class StudentRegisteredCourse < ApplicationRecord
    belongs_to :register_course
    belongs_to :student
end