class Course < ApplicationRecord
    belongs_to :student
    validates :description, presence: {message: "can't be empty"}
    validates :grade, presence: {message: "can't be empty"}
    validates :year_taken, presence: {message: "can't be empyty"}
    validates :name, presence: {message: "can't be empty"}
    

    scope :alphabetize, -> {order(title: :asc)}


    def make_average_grade
    end

    def self.search(search)
        where('name LIKE ?', "%#{search}%")
      end

end
