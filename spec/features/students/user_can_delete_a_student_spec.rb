require 'rails_helper'

describe 'User visits the students index' do
  describe 'They click delete next to a student\'s name' do
    scenario 'They can no longer see that student\'s name on the students index' do

      student = Student.create!(name: 'Nikhil')

      visit students_path

      click_on 'Delete'

      expect(page).to_not have_content('Nikhil')
    end
  end
end
