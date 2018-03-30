require 'rails_helper'

describe 'User visits the show page for a student' do
    scenario 'They can see all the addresses on the student\'s show page' do
      student = Student.create!(name: 'Nikhil')
      address_1 = student.addresses.create!(description: 'Sample1', street: 'Sample2', city: 'Sample3', state: 'Sample4', zip: 12345)
      address_2 = student.addresses.create!(description: 'Sample6', street: 'Sample7', city: 'Sample8', state: 'Sample9', zip: 67892)

      visit student_path(student)

      expect(page).to have_content(address_1.description)
      expect(page).to have_content(address_2.description)
      expect(page).to have_content(address_1.street)
      expect(page).to have_content(address_2.street)
      expect(page).to have_content(address_1.city)
      expect(page).to have_content(address_2.city)
      expect(page).to have_content(address_1.state)
      expect(page).to have_content(address_2.state)
      expect(page).to have_content(address_1.zip)
      expect(page).to have_content(address_2.zip)
    end
end
