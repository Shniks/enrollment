class Student < ApplicationRecord
  validates :name, presence: true
  has_many :addresses
  has_many :course_students
  has_many :courses, through: :course_students
end
