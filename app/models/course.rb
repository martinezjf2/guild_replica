class Course < ApplicationRecord
    belongs_to :student
    validates :description, presence: {message: "can't be empty"}
    validates :grade, presence: {message: "can't be empty"}, length: {maximum: 1, too_long: "%{count} characters is the maximum allowed. Only ONE letter and/or plus or minus symbol"}
    validates :year_taken, presence: {message: "can't be empyty"}
    validates :name, presence: {message: "can't be empty"}

    validate :is_first_letter_uppercase?

    before_validation :make_first_letter_uppercase
    

    scope :alphabetize, -> {order(title: :asc)}


    def is_first_letter_uppercase?
        if grade.split.any?{ |letter| letter[0].upcase != letter[0]}
            errors.add(:grade, "Grade must be capitalized!")
        end
    end

    def make_first_letter_uppercase
        self.grade = self.grade.titlecase
    end

end
