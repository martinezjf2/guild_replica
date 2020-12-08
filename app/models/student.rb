class Student < ApplicationRecord
    has_many :courses
    has_secure_password

    validate :is_first_name_uppercase?
    validate :is_last_name_uppercase?

    before_validation :make_first_name_uppercase
    before_validation :make_last_name_uppercase

    validates :first_name, presence: {message: "can't be empty"}
    validates :last_name, presence: {message: "can't be empty"}
    validates :email, presence: {message: "can't be empty"}, uniqueness: true
    validates :username, presence: {message: "can't be empty"}, uniqueness: true


    def is_first_name_uppercase?
        if first_name.split.any{ |letter| letter[0].upcase != letter[0]}
            errors.add(:first_name, "First Name must be capitalized!")
    end
    end

    def make_first_name_uppercase
        self.first_name = self.first_name.titlecase
    end

    def is_last_name_uppercase?
        if last_name.split.any{ |letter| letter[0].upcase != letter[0]}
            errors.add(:last_name, "First Name must be capitalized!")
        end
    end

    def make_last_name_uppercase
        self.last_name = self.last_name.titlecase
    end

end
