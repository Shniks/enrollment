require 'rails_helper'

describe 'User visits /students page' do
  scenario 'They can see a list of student names' do

    student_1 = Student.create!(name: 'Nikhil')
    student_2 = Student.create!(name: 'Sam')
    student_3 = Student.create!(name: 'Tyler')
    student_4 = Student.create!(name: 'Adam')
    student_5 = Student.create!(name: 'Ali')

    visit students_path

    expect(page).to have_content(student_1.name)
    expect(page).to have_content(student_2.name)
    expect(page).to have_content(student_3.name)
    expect(page).to have_content(student_4.name)
    expect(page).to have_content(student_5.name)
  end
end
