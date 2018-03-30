require 'rails_helper'

describe 'User visits student show page' do
  scenario 'They can see the name of a student' do
    student = Student.create!(name: 'Nikhil')

    visit student_path(student)

    expect(page).to have_content(student.name)
  end
end
