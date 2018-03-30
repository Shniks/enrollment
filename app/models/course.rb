class Course < ApplicationRecord
  validates :name, presence: true
  has_many :course_students
  has_many :students, through: :course_students
end
