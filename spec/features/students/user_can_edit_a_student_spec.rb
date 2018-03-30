require 'rails_helper'

describe 'User visits student show page' do
  describe 'They edit the student\'s name and click on submit' do
    scenario 'They can see that student\'s name on the student show page' do

      student = Student.create!(name: 'Nikhil')

      visit edit_student_path(student)

      fill_in 'student[name]', with: 'Sergio'
      click_on 'Update Student'

      expect(page).to have_content('Sergio')
    end
  end
end
