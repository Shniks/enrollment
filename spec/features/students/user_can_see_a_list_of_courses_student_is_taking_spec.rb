require 'rails_helper'

describe 'User visits the student show page' do
  scenario 'They can see a list of courses the student is taking' do
    student = Student.create!(name: 'Mike')
    course_1 = Course.create!(name: 'course1')
    course_2 = Course.create!(name: 'course2')
    course_3 = Course.create!(name: 'course3')
    student.courses << [course_1, course_2, course_3]

    visit student_path(student)

    expect(page).to have_content()
    expect(page).to have_content(course_1.name)
    expect(page).to have_content(course_2.name)
    expect(page).to have_content(course_3.name)
  end
end
