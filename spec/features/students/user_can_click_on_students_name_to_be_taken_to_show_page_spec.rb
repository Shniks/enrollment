require 'rails_helper'

describe 'User visits the students index' do
  describe 'They click on a student\'s name' do
    scenario 'They are taken to the show page for that student' do

      student_1 = Student.create!(name: 'Nikhil')
      student_2 = Student.create!(name: 'Tyler')
      student_3 = Student.create!(name: 'Adam')

      visit students_path

      click_on student_2.name

      expect(page).to have_content(student_2.name)
    end
  end
end
