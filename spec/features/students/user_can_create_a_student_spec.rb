require 'rails_helper'

describe 'User visits the student new page' do
  describe 'They fill in a form and click submit' do
    scenario 'They see the student\'s name on the student show page' do

      visit new_student_path

      fill_in 'student[name]', with: 'Nikhil'
      click_on 'Create Student'

      expect(page).to have_content(Student.last.name)
    end
  end
end
