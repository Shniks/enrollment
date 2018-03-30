require 'rails_helper'

describe 'User visits any page' do
  scenario 'They can see links to index and create new student pages' do

    visit students_path

    expect(page).to have_link(students_path)
    expect(page).to have_link(new_student_path)
  end
end
