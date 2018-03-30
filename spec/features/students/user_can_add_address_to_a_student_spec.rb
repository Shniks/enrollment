require 'rails_helper'

describe 'User visits the fill new address page for a student' do
  describe 'They fill in the form with details and click submit' do
    scenario 'They can see these details on the student\'s show page' do
      student = Student.create!(name: 'Nikhil')

      visit student_path(student)

      click_on "Create new address"

      fill_in 'address[description]', with: 'Summer Address'
      fill_in 'address[street]', with: 'Street 1'
      fill_in 'address[city]', with: 'City 1'
      fill_in 'address[state]', with: 'State 1'
      fill_in 'address[zip]', with: 80202

      click_on 'Create Address'

      expect(page).to have_content(student.addresses.last.description)
      expect(page).to have_content(student.addresses.last.street)
      expect(page).to have_content(student.addresses.last.city)
      expect(page).to have_content(student.addresses.last.state)
      expect(page).to have_content(student.addresses.last.zip)
    end
  end
end
