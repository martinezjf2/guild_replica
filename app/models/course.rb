class Course < ApplicationRecord
    belongs_to :student
    validates :description, presence: {message: "can't be empty"}
    validates :grade, presence: {message: "can't be empty"}
    validates :year_taken, :presence: {message: "can't be empyty"}
    
    def make_grade_to_i
# did not complete method due to the counselor can put college grades such as A, B, C
    end
end
