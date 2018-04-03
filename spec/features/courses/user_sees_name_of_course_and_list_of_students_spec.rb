require 'rails_helper'

describe 'User visits the course show page' do
  scenario 'They can see name of the course and a list of students enrolled in that course' do
    course_1 = Course.create!(name: 'course1')
    course_2 = Course.create!(name: 'course2')
    student_1 = Student.create!(name: 'Mike')
    student_2 = Student.create!(name: 'Nikhil')
    student_3 = Student.create!(name: 'Sal')
    student_4 = Student.create!(name: 'Tyler')
    course_1.students << [student_1, student_2, student_4]

    visit course_path(course_1)

    expect(page).to have_content(course_1.name)
    expect(page).to have_content(student_1.name)
    expect(page).to have_content(student_2.name)
    expect(page).to have_content(student_4.name)
    expect(page).to_not have_content(student_3.name)
  end
end
